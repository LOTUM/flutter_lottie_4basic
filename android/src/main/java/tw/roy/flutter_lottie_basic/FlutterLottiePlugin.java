package tw.roy.flutter_lottie_basic;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** FlutterLottiePlugin */
public class FlutterLottiePlugin {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
	registrar.platformViewRegistry().registerViewFactory(
		"flutter_lottie_basic",
		new LottieViewFactory(registrar)
	);
  }
}
