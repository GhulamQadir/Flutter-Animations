import 'package:flutter/material.dart';
import 'package:flutteranimation/Card.dart';
import 'package:flutteranimation/FadeInImage.dart';
import 'package:flutteranimation/animatedcontainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FadeinImage(),
      routes: {
        "/contanimation": (context) => ContainerAnimation(),
        "/card-animation": (context) => CardAnimation(),
        "/fadein-image": (context) => FadeinImage(),
      },
    );
  }
}
