import 'package:cloneapps/data/constants/username.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:cloneapps/features/comment/comment_page.dart';

class InfoWidget extends StatelessWidget {
  int index;
  InfoWidget(this.index);
  @override
  Widget build(BuildContext context) {

    final onOpenComment = () {
      Navigator.pushNamed(
          context,
          CommentPage.ROUTE_NAME,
          arguments: '112034');
    };

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DefaultTextStyle(
              style: Theme.of(context).textTheme.subtitle2.copyWith(
                fontWeight: FontWeight.w800
              ),
              child: Text('1,102 likes', style: Theme.of(context).textTheme.bodyText2,)),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              top: 8,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: username[index], style: Theme.of(context).textTheme.bodyText2),
                  TextSpan(text: 'It can be a hassle to think of captions when you’re trying to post photos in various social networks. But if you’re just trying to come up with some best friend captions, then there’s no need to worry, because this collection’s got you, fam!',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.w400
                      )),
                ]
              ),
            ),
          ),
          InkWell(
            child: Container(
              child: Text(
                'View all 4 comment',
                style: Theme.of(context).textTheme.caption,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 4
              ),
            ),
            onTap: onOpenComment,
          )
        ],
      ),
    );
  }
}
