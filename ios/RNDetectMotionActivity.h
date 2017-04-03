
#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif

#define kDataClassMotion NSLocalizedString(@"MOTION_SERVICE", @"")

typedef NS_ENUM(NSInteger, DataClass)  {
    Motion
};

@interface RNDetectMotionActivity : NSObject <RCTBridgeModule>

@end
