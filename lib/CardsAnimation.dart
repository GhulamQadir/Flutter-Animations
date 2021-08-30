import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutteranimation/data.dart';

class CardsAnimation extends StatefulWidget {
  @override
  _CardsAnimationState createState() => _CardsAnimationState();
}

class _CardsAnimationState extends State<CardsAnimation> {
  var itemList = data;
  var listScrollController = new ScrollController();
  var scrollDirection = ScrollDirection.idle;

  @override
  void initState() {
    listScrollController.addListener(() {
      scrollDirection = listScrollController.position.userScrollDirection;
    });
    super.initState();
  }

  bool _scrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification) {
      setState(() {
        scrollDirection = ScrollDirection.idle;
      });
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Cards Animation")),
        ),
        body: Container(
          child: Center(
            child: Container(
              height: 300,
              padding: EdgeInsets.symmetric(vertical: 16),
              child: ListView(
                controller: listScrollController,
                scrollDirection: Axis.horizontal,
                children: data.map((item) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 100),
                    transform: Matrix4.rotationZ(
                        scrollDirection == ScrollDirection.forward
                            ? 0.07
                            : scrollDirection == ScrollDirection.reverse
                                ? -0.07
                                : 0),
                    width: 200,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        color: Color(item["color"]),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Color(item["color"]).withOpacity(0.6),
                              offset: Offset(-6, 4),
                              blurRadius: 10),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          item["image"],
                          height: 120,
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 16)),
                        Text(
                          item["title"],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
