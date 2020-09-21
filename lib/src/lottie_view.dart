import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'lottie_controller.dart';
import 'package:flutter/foundation.dart';

typedef void LottieViewCreatedCallback(LottieController controller);

class LottieView extends StatefulWidget {
  LottieView.fromURL({
    this.onViewCreated,
    @required this.url,
    Key key,
    this.loop = true,
    this.autoPlay = true,
    this.reverse = false,
  })  : filePath = null,
        json = null,
        super(key: key);

  LottieView.fromAsset({
    Key key,
    this.onViewCreated,
    @required this.filePath,
    this.loop = true,
    this.autoPlay = true,
    this.reverse = false,
  })  : url = null,
        json = null,
        super(key: key);

  LottieView.fromJson({
    Key key,
    this.onViewCreated,
    @required this.json,
    this.loop = true,
    this.autoPlay = true,
    this.reverse = false,
  })  : url = null,
        filePath = null,
        super(key: key);

  final bool loop;
  final bool autoPlay;
  final bool reverse;
  final String url;
  final String filePath;
  final String json;

  @override
  _LottieViewState createState() => _LottieViewState();

  final LottieViewCreatedCallback onViewCreated;
}

class _LottieViewState extends State<LottieView> {
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return AndroidView(
        viewType: 'shotouch/flutter_lottie',
        creationParams: <String, dynamic>{
          "url": widget.url,
          "filePath": widget.filePath,
          "json": widget.json,
          "loop": widget.loop,
          "reverse": widget.reverse,
          "autoPlay": widget.autoPlay,
        },
        creationParamsCodec: StandardMessageCodec(),
        onPlatformViewCreated: onPlatformCreated,
      );
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return UiKitView(
        viewType: 'shotouch/flutter_lottie',
        creationParams: <String, dynamic>{
          "url": widget.url,
          "filePath": widget.filePath,
          "json": widget.json,
          "loop": widget.loop,
          "reverse": widget.reverse,
          "autoPlay": widget.autoPlay,
        },
        creationParamsCodec: StandardMessageCodec(),
        onPlatformViewCreated: onPlatformCreated,
      );
    }

    return new Text('$defaultTargetPlatform is not yet supported by this plugin');
  }

  Future<void> onPlatformCreated(id) async {
    if (widget.onViewCreated == null) {
      return;
    }
    widget.onViewCreated(new LottieController(id));
  }
}
