#import "Asam.h"
#import <UIKit/UIKit.h>

@implementation Asam

RCT_EXPORT_MODULE();

/* TODO: Promesify this method*/
RCT_EXPORT_METHOD(enterSingleAppMode:(RCTResponseSenderBlock)callback)
{
  dispatch_async(dispatch_get_main_queue(), ^{

    UIAccessibilityRequestGuidedAccessSession(YES, ^(BOOL didSucceed) {
        if (didSucceed) {
          NSLog(@"entered single app mode");
          callback(@[[NSNull null], @(didSucceed)]);
        }
        else {
          NSLog(@"failed to enter guided access");
          callback(@[@"Failed to Enter Single App Mode", @(didSucceed)]);
        }
    });

  });
  
}

/* TODO: Promesify this method */
RCT_EXPORT_METHOD(exitSingleAppMode:(RCTResponseSenderBlock)callback)
{
  dispatch_async(dispatch_get_main_queue(), ^{

    UIAccessibilityRequestGuidedAccessSession(NO, ^(BOOL didSucceed) {
      if (didSucceed) {
        NSLog(@"exited single app mode");
        callback(@[[NSNull null], @(didSucceed)]);
      }
      else {
        NSLog(@"failed to enter guided access");
        callback(@[@"Failed to Exit Single App Mode", @(didSucceed)]);
      }
    });

  });
  
}

RCT_REMAP_METHOD(isSingleAppModeEnabled,
                 isSingleAppModeEnabledWithResolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
  dispatch_async(dispatch_get_main_queue(), ^{  

    BOOL isEnabled = UIAccessibilityIsGuidedAccessEnabled();
    resolve(@(isEnabled));

  });
}
@end
