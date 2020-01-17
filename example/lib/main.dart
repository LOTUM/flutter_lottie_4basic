import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_lottie_basic/flutter_lottie_basic.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  LottieController controller2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lottie'),
        ),
        body: Center(
          child: Container(
            width: 150,
            height: 150,
            child: LottieView.fromFile(
              filePath: "animations/newAnimation.json",
              autoPlay: true,
              loop: true,
              reverse: true,
              onViewCreated: onViewCreatedFile,
            ),
          ),
        ),
      ),
    );
  }

  void onViewCreatedFile(LottieController controller) {
    this.controller2 = controller;
  }

  void dispose() {
    super.dispose();
  }
}
