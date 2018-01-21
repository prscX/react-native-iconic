
#if __has_include("RCTBridgeModule.h")
#import "RCTViewManager.h"
#else
#import <React/RCTViewManager.h>
#endif

#import "VBFPopFlatButton.h"

@interface RNIconic : RCTViewManager

@property (nonatomic) NSArray *shapes;
@property (nonatomic) NSNumber *selection;

@end
  
