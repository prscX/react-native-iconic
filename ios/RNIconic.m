
#import "RNIconic.h"

@implementation RNIconic

- (dispatch_queue_t)methodQueue {
    return dispatch_get_main_queue();
}


- (id)init {
    self = [super init];
    if (self) {
        self.selection = 0;
        self.shapes = [[NSArray alloc] init];
    }
    
    return self;
}


RCT_EXPORT_MODULE()

- (VBFPopFlatButton *)view {
    VBFPopFlatButton *iconicButton = [[VBFPopFlatButton alloc] init];
    [iconicButton addTarget:self
                     action:@selector(handleSelection:)
           forControlEvents:UIControlEventTouchUpInside];
    
    return iconicButton;
}

RCT_CUSTOM_VIEW_PROPERTY(size, NSNumber *, VBFPopFlatButton) {
    view.frame = CGRectMake(0, 0, [json floatValue], [json floatValue]);
    [view commonSetup];
}

RCT_CUSTOM_VIEW_PROPERTY(rounded, NSBoolean *, VBFPopFlatButton) {
    if ([json integerValue] == 1) {
        [view setCurrentButtonStyle:(FlatButtonStyle) buttonRoundedStyle];
    } else {
        [view setCurrentButtonStyle:(FlatButtonStyle) buttonPlainStyle];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(lineThickness, NSNumber *, VBFPopFlatButton) {
    view.lineThickness = [json floatValue];
}

RCT_CUSTOM_VIEW_PROPERTY(color, NSNumber *, VBFPopFlatButton) {
    view.tintColor = [RNIconic colorFromHexCode: json];
}

RCT_CUSTOM_VIEW_PROPERTY(shape, NSArray *, VBFPopFlatButton) {
    self.shapes = json;
    [view setCurrentButtonType: [self getShape: [self.shapes objectAtIndex: [self.selection intValue]]]];
}

RCT_CUSTOM_VIEW_PROPERTY(selection, NSNumber *, VBFPopFlatButton) {
    self.selection = json;

    if (self.shapes != nil && [self.shapes count] > 0) {
        [view setCurrentButtonType: [self getShape: [self.shapes objectAtIndex: [self.selection intValue]]]];
    }
}


RCT_CUSTOM_VIEW_PROPERTY(tintColor, NSString *, VBFPopFlatButton) {
    [view setRoundBackgroundColor: [RNIconic colorFromHexCode: json]];
}


-(void)handleSelection:(VBFPopFlatButton*)iconicButton {
    
    NSNumber *selection = [self selection];
    NSArray *shapes = [self shapes];
    
    long shape;
    
    if (([shapes count] - 1) != [selection intValue]) {
        shape = [self getShape: [shapes objectAtIndex: ([selection intValue] + 1)]];
        self.selection = [NSNumber numberWithInt: [selection intValue] + 1];
    } else {
        shape = [self getShape: [shapes objectAtIndex: 0]];
        self.selection = [NSNumber numberWithInt: 0];
    }
    
    [iconicButton animateToType: shape];
    
    NSDictionary *event = @{
                            @"target": iconicButton.reactTag,
                            @"value": self.selection,
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

