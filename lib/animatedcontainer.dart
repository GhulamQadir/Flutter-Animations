import 'package:flutter/material.dart';

class ContainerAnimation extends StatefulWidget {
  @override
  _ContainerAnimationState createState() => _ContainerAnimationState();
}

class _ContainerAnimationState extends State<ContainerAnimation> {
  double height = 100;
  double width = 100;
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Animated Container")),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            height: height,
            width: width,
            color: color,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              height = 200;
              width = 200;
              color = Colors.amber;
            });
          },
          child: Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
