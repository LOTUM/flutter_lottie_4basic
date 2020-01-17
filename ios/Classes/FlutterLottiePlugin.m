#import "FlutterLottiePlugin.h"
#import <flutter_lottie_4basic/flutter_lottie_4basic-Swift.h>

@implementation FlutterLottiePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterLottiePlugin registerWithRegistrar:registrar];
}
@end
