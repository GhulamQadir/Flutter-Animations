import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class CardAnimation extends StatefulWidget {
  @override
  _CardAnimationState createState() => _CardAnimationState();
}

class _CardAnimationState extends State<CardAnimation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Card Animation")),
        ),
        body: Column(
          children: [
            OpenContainer(
                openColor: Colors.pink,
                transitionDuration: Duration(seconds: 1),
                transitionType: ContainerTransitionType.fadeThrough,
                closedBuilder: (context, action) {
                  return Text("Small widget");
                },
                openBuilder: (context, action) {
                  return SafeArea(child: Center(child: Text("Big screen")));
                }),
            OpenContainer(
                openColor: Colors.pink,
                transitionDuration: Duration(seconds: 1),
                transitionType: ContainerTransitionType.fadeThrough,
                closedBuilder: (context, action) {
                  return Container(
                    height: 160,
                    width: 160,
                    child: Card(
                      margin: EdgeInsets.only(top: 5, bottom: 0),
                      elevation: 3,
                      color: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            height: 90,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://assets.swappie.com/cdn-cgi/image/width=600,height=600,fit=contain,format=auto/iPhone-11-Pro-midnight-green-back.png"),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3, left: 5),
                            child: Text(
                              "iPhone 11 Pro",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3, left: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[500],
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[500],
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[500],
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[500],
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[500],
                                  size: 10,
                                ),
                                Text(
                                  " 5.0 (23 Reviews)",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                openBuilder: (context, action) {
                  return SafeArea(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: Text(
                        "Complete details",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400),
                      )),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 20, bottom: 5),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://assets.swappie.com/cdn-cgi/image/width=600,height=600,fit=contain,format=auto/iPhone-11-Pro-midnight-green-back.png"),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 3, left: 5),
                              child: Text(
                                "iPhone 11 Pro",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3, left: 5),
                              child: Text(
                                "1 year Warranty",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3, left: 5),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow[500],
                              size: 10,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[500],
                              size: 10,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[500],
                              size: 10,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[500],
                              size: 10,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[500],
                              size: 10,
                            ),
                            Text(
                              " 5.0 (23 Reviews)",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      )
                    ],
                  ));
                })
          ],
        ),
      ),
    );
  }
}
