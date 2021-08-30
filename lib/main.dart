import 'package:flutter/material.dart';
import 'package:flutteranimation/Card.dart';
import 'package:flutteranimation/CardsAnimation.dart';
import 'package:flutteranimation/animatedcontainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardAnimation(),
      routes: {
        "/contanimation": (context) => ContainerAnimation(),
        // "/sliveranimation": (context) => CardsAnimation(),
        "/card-animation": (context) => CardAnimation(),
      },
    );
  }
}
