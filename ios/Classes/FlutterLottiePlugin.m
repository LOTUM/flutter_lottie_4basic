#import "FlutterLottiePlugin.h"
#import <flutter_lottie_lotum/flutter_lottie_lotum-Swift.h>

@implementation FlutterLottiePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterLottiePlugin registerWithRegistrar:registrar];
}
@end
