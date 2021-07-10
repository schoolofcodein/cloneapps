import 'package:cloneapps/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloneapps/tabs/mails.dart';
import 'package:cloneapps/tabs/meet.dart';
import 'package:flutter/rendering.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key key}) : super(key: key);

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [Mails(), Meet()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: secondary,
        fixedColor: selectedIcon,
        unselectedItemColor: Colors.grey,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0),
              child: new Icon(
                Icons.mail,
                size: 25,
              ),
            ),
            label: 'Mail',
          ),
          new BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.video_camera, size: 35.0),
            label: 'Meet',
            
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class FloatAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 10,
          right: 15,
          left: 15,
          child: Container(
            color: secondary,
            child: Row(
              children: <Widget>[
                Material(
                  type: MaterialType.transparency,
                  child: IconButton(
                    splashColor: Colors.grey,
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ),
                Expanded(
                  child: TextField(
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        hintText: "Search..."),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}