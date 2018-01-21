
#import "RNIconic.h"

@implementation RNIconic

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

- (UIView *)view
{
    UIView *view = [[UIView alloc] init];
    return view;
}


RCT_CUSTOM_VIEW_PROPERTY(props, NSDictonary *, UIView)
{
    Boolean *rounded = (Boolean) [json objectForKey: @"rounded"];
    NSString *roundBackgroundColor = [json objectForKey: @"roundBackgroundColor"];
    NSNumber *lineThickness = [json objectForKey: @"lineThickness"];
    NSString *tintColor = [json objectForKey: @"tintColor"];
    
    NSArray *shape = [json objectForKey: @"shape"];
    
    NSString *disable = [json objectForKey: @"disable"];
    
    NSNumber *selection = [json objectForKey: @"selection"];
    NSNumber *size = [json objectForKey: @"size"];
    
    
     VBFPopFlatButton *iconicButton = [[VBFPopFlatButton alloc]initWithFrame:CGRectMake(0, 0, [size floatValue], [size floatValue])
                 buttonType:[self getShape: [shape objectAtIndex: [selection integerValue]]]
                 buttonStyle: rounded ? buttonPlainStyle : buttonRoundedStyle
      animateToInitialState:YES];

    iconicButton.shapes = shape;
    iconicButton.selection = selection;
    
    iconicButton.roundBackgroundColor = [RNIconic colorFromHexCode: roundBackgroundColor];
    iconicButton.lineThickness = [lineThickness floatValue];
    iconicButton.tintColor = [RNIconic colorFromHexCode: tintColor];
    iconicButton.reactTag = view.reactTag;

    [iconicButton addTarget:self
                     action:@selector(handleSelection:)
                 forControlEvents:UIControlEventTouchUpInside];

    [view addSubview: iconicButton];
}


-(void)handleSelection:(VBFPopFlatButton*)iconicButton {

    NSNumber *selection = iconicButton.selection;
    NSArray *shapes = iconicButton.shapes;
    
    long shape;
    
    if (([shapes count] - 1) != [selection intValue]) {
        shape = [self getShape: [shapes objectAtIndex: ([selection intValue] + 1)]];
        iconicButton.selection = [NSNumber numberWithInt: [selection intValue] + 1];
    } else {
        shape = [self getShape: 0];
        iconicButton.selection = [NSNumber numberWithInt: 0];
    }
    
    [iconicButton animateToType: shape];

    NSDictionary *event = @{
        @"target": iconicButton.reactTag,
        @"value": iconicButton.selection,
        @"name": @"tap",
    };
    [self.bridge.eventDispatcher sendInputEventWithName:@"topChange" body:event];
}

-(long)getShape:(NSString *)shape {
    if ([shape isEqualToString: @"default"]) {
        return buttonDefaultType;
    } else if([shape isEqualToString: @"add"]) {
        return buttonAddType;
    } else if([shape isEqualToString: @"minus"]) {
        return buttonMinusType;
    } else if([shape isEqualToString: @"close"]) {
        return buttonCloseType;
    } else if([shape isEqualToString: @"back"]) {
        return buttonBackType;
    } else if([shape isEqualToString: @"forward"]) {
        return buttonForwardType;
    } else if([shape isEqualToString: @"menu"]) {
        return buttonMenuType;
    } else if([shape isEqualToString: @"download"]) {
        return buttonDownloadType;
    } else if([shape isEqualToString: @"share"]) {
        return buttonShareType;
    } else if([shape isEqualToString: @"down-basic"]) {
        return buttonDownBasicType;
    } else if([shape isEqualToString: @"up-basic"]) {
        return buttonUpBasicType;
    } else if([shape isEqualToString: @"paused"]) {
        return buttonPausedType;
    } else if([shape isEqualToString: @"down-arrow"]) {
        return buttonDownArrowType;
    } else if([shape isEqualToString: @"right-triangle"]) {
        return buttonRightTriangleType;
    } else if([shape isEqualToString: @"left-triangle"]) {
        return buttonLeftTriangleType;
    } else if([shape isEqualToString: @"up-triangle"]) {
        return buttonUpTriangleType;
    } else if([shape isEqualToString: @"down-triangle"]) {
        return buttonDownTriangleType;
    } else if([shape isEqualToString: @"ok"]) {
        return buttonOkType;
    } else if([shape isEqualToString: @"rewind"]) {
        return buttonRewindType;
    } else if([shape isEqualToString: @"fast-forward"]) {
        return buttonFastForwardType;
    } else if([shape isEqualToString: @"square"]) {
        return buttonSquareType;
    }
    
    return buttonDefaultType;
}

+ (UIColor *) colorFromHexCode:(NSString *)hexString {
    NSString *cleanString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    if([cleanString length] == 3) {
        cleanString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                       [cleanString substringWithRange:NSMakeRange(0, 1)],[cleanString substringWithRange:NSMakeRange(0, 1)],
                       [cleanString substringWithRange:NSMakeRange(1, 1)],[cleanString substringWithRange:NSMakeRange(1, 1)],
                       [cleanString substringWithRange:NSMakeRange(2, 1)],[cleanString substringWithRange:NSMakeRange(2, 1)]];
    }
    if([cleanString length] == 6) {
        cleanString = [cleanString stringByAppendingString:@"ff"];
    }
    
    unsigned int baseValue;
    [[NSScanner scannerWithString:cleanString] scanHexInt:&baseValue];
    
    float red = ((baseValue >> 24) & 0xFF)/255.0f;
    float green = ((baseValue >> 16) & 0xFF)/255.0f;
    float blue = ((baseValue >> 8) & 0xFF)/255.0f;
    float alpha = ((baseValue >> 0) & 0xFF)/255.0f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

@end
  
