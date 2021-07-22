import 'package:cloneapps/data/constants/username.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:cloneapps/features/story/story_page.dart';

class StoryItemWidget extends StatefulWidget {
  int index;
  StoryItemWidget(this.index);
  static const ROUTE_NAME = 'StoryItemWidget';
  @override
  _StoryItemWidgetState createState() => _StoryItemWidgetState();
}

class _StoryItemWidgetState extends State<StoryItemWidget> {
  static const TAG = 'StoryItemWidget';
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: FittedBox(
        child: Container(
          width: 80,
          height: 96,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 72,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ClipOval(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.redAccent[400], Colors.pink[100]],
                              )
                          ),
                          padding: EdgeInsets.all(2),
                          child: CircleAvatar(
                              radius: 34,
                              backgroundImage : AssetImage('assets/face/person${widget.index+1}.jfif')
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4),
                child: Text(username.elementAt(widget.index), style: Theme.of(context).textTheme.caption?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground
                ),),
              )
            ],
          ),
        ),
        fit: BoxFit.scaleDown,
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => StoryPage(),
        ));
      },
    );
  }
}
