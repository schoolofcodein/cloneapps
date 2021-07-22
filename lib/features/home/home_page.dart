import 'package:flutter/material.dart';
import 'package:cloneapps/widgets/feed/feed_widget.dart';
import 'package:cloneapps/widgets/story/home_story_widget.dart';
// import 'dart:developer' as developer;

import 'header_widget.dart';

class HomePage extends StatefulWidget {
  static const ROUTE_NAME = 'HomePage';

  final VoidCallback onCameraClick;

  HomePage(this.onCameraClick);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const TAG = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderWidget(widget.onCameraClick),
      body: RefreshIndicator(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                HomeStoryWidget(),
                FeedWidget('assets/sample/feed_1.jpg',0),
                FeedWidget('assets/sample/feed_2.jpg',1),
                FeedWidget('assets/sample/feed_3.jpg',2),
                FeedWidget('assets/sample/feed_4.jpg',3),
                FeedWidget('assets/sample/feed_5.jpg',4),
                FeedWidget('assets/sample/feed_6.jpg',5),
                FeedWidget('assets/sample/feed_7.jpg',6),
                FeedWidget('assets/sample/feed_8.jpg',7),
                FeedWidget('assets/sample/feed_9.jpg',8),
                FeedWidget('assets/sample/feed_10.jpg',9),
              ],
            ),
          ),
          onRefresh: () async {

          }),
    );
  }
}
