import 'package:cloneapps/data/constants/username.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class HeaderWidget extends StatelessWidget {
  int index;
  HeaderWidget(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 16,
      ).copyWith(
        right: 0
      ),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 16,
              backgroundImage : AssetImage('assets/face/person${index+1}.jfif')
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  DefaultTextStyle(
                      style: Theme.of(context).textTheme.bodyText2,
                      child: Text(username[index]),),
                  Text('Delhi, India', style: Theme.of(context).textTheme.caption,)
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: (){
              showDialog(
                useRootNavigator: false,
                context: context,
                builder: (context) {
                  return Dialog(
                    child: ListView(
                        padding: EdgeInsets.symmetric(
                            vertical: 16
                        ),
                        shrinkWrap: true,
                        children: [
                          'Report...', 'Turn on Post notification', 'Copy Link', 'Share to...', 'Mute'
                        ].map(
                                (e) => InkWell(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12,
                                    horizontal: 16
                                ),
                                child: Text(e),
                              ),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            )
                        ).toList()
                    ),
                  );
                },
              );
            },
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}
