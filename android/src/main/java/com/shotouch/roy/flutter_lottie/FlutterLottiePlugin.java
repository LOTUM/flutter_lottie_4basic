package com.shotouch.roy.flutter_lottie;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.platform.PlatformViewRegistry;

public class FlutterLottiePlugin implements FlutterPlugin, ActivityAware {

	@Nullable private FlutterPluginBinding pluginBinding;

	public FlutterLottiePlugin() {}

	private void initializePlugin(BinaryMessenger messenger, PlatformViewRegistry viewRegistry) {
		viewRegistry.registerViewFactory(
			"shotouch/flutter_lottie",
			new LottieViewFactory(messenger));
	}

	@Override
	public void onAttachedToEngine(@NonNull FlutterPluginBinding binding) {
		pluginBinding = binding;
	}

	@Override
	public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
		// Do nothing
	}

	@Override
	public void onAttachedToActivity(ActivityPluginBinding binding) {
		initializePlugin(
			pluginBinding.getBinaryMessenger(),
			pluginBinding.getPlatformViewRegistry());
	}

	@Override
	public void onDetachedFromActivityForConfigChanges() {
		// Do nothing.
	}

	@Override
	public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
		// Do nothing.
	}

	@Override
	public void onDetachedFromActivity() {
		// Do nothing.
	}
}
