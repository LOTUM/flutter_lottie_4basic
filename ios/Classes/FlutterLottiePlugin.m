#import "FlutterLottiePlugin.h"
#import <roy_flutter_lottie/roy_flutter_lottie-Swift.h>

@implementation FlutterLottiePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterLottiePlugin registerWithRegistrar:registrar];
}
@end
