
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
//    NSString *size = [json objectForKey: @"size"];
//    NSString *color = [json objectForKey: @"color"];
//    NSString *fillColor = [json objectForKey: @"fillColor"];
//
//    NSString *shape = [json objectForKey: @"shape"];
//    NSString *disabled = [json objectForKey: @"disabled"];
//
//    WCLShineButton *shineButton = [[WCLShineButton alloc] initWithFrame: CGRectMake(0, 0, [size floatValue], [size floatValue])];
//    shineButton.color = [RNShineButton colorFromHexCode: color];
//    shineButton.fillColor = [RNShineButton colorFromHexCode: fillColor];
//    shineButton.reactTag = view.reactTag;
//
//    if ([shape isEqualToString:@"heart"]) {
//        shineButton.image = @".heart";
//    } else if ([shape isEqualToString:@"like"]) {
//        shineButton.image = @".like";
//    } else if ([shape isEqualToString:@"smile"]) {
//        shineButton.image = @".smile";
//    } else if ([shape isEqualToString:@"star"]) {
//        shineButton.image = @".star";
//    }
//
//    UITapGestureRecognizer *singleTap =
//    [[UITapGestureRecognizer alloc] initWithTarget:self
//                                            action:@selector(handleTap:)];
//    [shineButton addGestureRecognizer: singleTap];
//
//    [view addSubview: shineButton];

     VBFPopFlatButton *iconicButton = [[VBFPopFlatButton alloc]initWithFrame:CGRectMake(0, 0, 30, 30)
                 buttonType:buttonMenuType
                buttonStyle:buttonRoundedStyle
      animateToInitialState:YES];

    iconicButton.roundBackgroundColor = [UIColor whiteColor];
    iconicButton.lineThickness = 2;
    iconicButton.tintColor = [UIColor blueColor];

    [iconicButton addTarget:self
                     action:@selector(handleSelection:)
                 forControlEvents:UIControlEventTouchUpInside];

    [view addSubview: iconicButton];

}

-(void)handleSelection:(VBFPopFlatButton*)iconicButton {
    [iconicButton animateToType:buttonCloseType];
}


@end
  
