package com.shotouch.roy.flutter_lottie;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import io.flutter.plugin.common.StandardMessageCodec;
import android.content.Context;

public class LottieViewFactory extends PlatformViewFactory {

    private final BinaryMessenger mBinaryMessenger;

    public LottieViewFactory(BinaryMessenger binaryMessenger) {
        super(StandardMessageCodec.INSTANCE);
        mBinaryMessenger = binaryMessenger;
    }

    @Override
    public PlatformView create(Context context, int id, Object args) {
        return new LottieView(context, id, args, mBinaryMessenger);
    }
}
