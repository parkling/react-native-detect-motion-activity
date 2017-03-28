/*
@import CoreMotion;
*/

#import "RNDetectMotionActivity.h"

/*
@interface RNDetectMotionActivity ()
@property (nonatomic, strong) CMMotionActivityManager *cmManager;
@end
*/

@implementation RNDetectMotionActivity

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}


RCT_EXPORT_MODULE()

/*
- (void)requestMotionAccessData {
    self.cmManager = [[CMMotionActivityManager alloc] init];
    self.motionActivityQueue = [[NSOperationQueue alloc] init];
    [self.cmManager startActivityUpdatesToQueue:self.motionActivityQueue withHandler:^(CMMotionActivity *activity) {
        /*
         * Do something with the activity reported
         */
         /*
        [self alertViewWithDataClass:Motion status:NSLocalizedString(@"ALLOWED", @"")];
        [self.cmManager stopActivityUpdates];
    }];
}
*/
@end
