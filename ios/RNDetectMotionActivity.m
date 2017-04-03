
@import CoreMotion;
@import UIKit;
@import EventKit;

#import "RNDetectMotionActivity.h"
#import "RCTLog.h"

@interface RNDetectMotionActivity ()
@property (nonatomic, strong) CMMotionActivityManager *cmManager;
@property (nonatomic, strong) NSOperationQueue *motionActivityQueue;
@end

@implementation RNDetectMotionActivity

RCT_EXPORT_MODULE();

RCT_REMAP_METHOD(getActivity,
                 resolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
  self.cmManager = [[CMMotionActivityManager alloc] init];
  self.motionActivityQueue = [[NSOperationQueue alloc] init];
  [self.cmManager startActivityUpdatesToQueue:self.motionActivityQueue withHandler:^(CMMotionActivity *activity) {
     dispatch_async(dispatch_get_main_queue(), ^{
       if ([activity stationary]) {
         resolve(@"stationary");
       } else if ([activity walking]) {
         resolve(@"walking");
       } else if ([activity automotive]) {
         resolve(@"automotive");
       } else {
         resolve(@"other");
       }
     });
    [self.cmManager stopActivityUpdates];
  }];
}

@end
