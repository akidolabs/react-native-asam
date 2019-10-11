#import "Asam.h"
#import <UIKit/UIKit.h>

@implementation Asam

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(enterSingleAppMode: (RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  UIAccessibilityRequestGuidedAccessSession(YES, ^(BOOL didSucceed) {
    if (didSucceed) {
      NSLog(@"entered single app mode");
      [[[UIAlertView alloc] initWithTitle:@"entered single app mode" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    }
    else {
      NSLog(@"failed to enter guided access");
      [[[UIAlertView alloc] initWithTitle:@"Unable to enter single app mode" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    }
  });
  
}

RCT_EXPORT_METHOD(exitSingleAppMode)
{
  UIAccessibilityRequestGuidedAccessSession(NO, ^(BOOL didSucceed) {
    if (didSucceed) {
      NSLog(@"exited single app mode");
      [[[UIAlertView alloc] initWithTitle:@"exited single app mode" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    }
    else {
      NSLog(@"failed to enter guided access");
      [[[UIAlertView alloc] initWithTitle:@"Unable to exit single access mode" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    }
  });
  
}
@end
