import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeinImage extends StatefulWidget {
  @override
  _FadeinImageState createState() => _FadeinImageState();
}

class _FadeinImageState extends State<FadeinImage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("FadeIn Image"),
        ),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  "My FadeIn Image",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Stack(
              children: [
                Center(
                  child: CircularProgressIndicator(),
                ),
                FadeInImage.memoryNetwork(
                    fadeInDuration: Duration(milliseconds: 5000),
                    fadeInCurve: Curves.bounceIn,
                    placeholder: kTransparentImage,
                    image:
                        "https://www.localguidesconnect.com/t5/image/serverpage/image-id/825954i41D08E78785336EB/image-size/large?v=v2&px=999"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
