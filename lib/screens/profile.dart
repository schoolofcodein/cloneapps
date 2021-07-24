import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final profileimages = [
    'assets/images/face1.jpeg',
    'assets/images/face2.jpeg',
    'assets/images/face3.jpeg',
    'assets/images/face4.jpeg',
    'assets/images/face5.jpeg',
    'assets/images/face5.jpeg',
  ];
  final names = ['schoolofcode', 'schoolofcode', 'schoolofcode', 'schoolofcode', 'schoolofcode', 'sschoolofcode'];
  final usernames = [
    '@schoolofcode.in',
    '@schoolofcode.in',
    '@schoolofcode.in',
    '@schoolofcode.in',
    '@schoolofcode.in',
    '@schoolofcode.in'
  ];
  final images = [
    'assets/images/netflix.gif',
    null,
    'assets/images/nike.gif',
    'assets/images/flutter.jpeg',
    null,
    null,
  ];
  final tweets = [
    'Develope your own Netflix App',
    'Hey #Flutter! We have @kevmoo from @flutterdev tomorrow on #HumpDayQandA, to talk about Null Safety & Dart\'s Functions Framework.',
    'Develope your own Ecommerce App',
    'Welcome to Flutter 2.2\nLearn more about the latest growth and updates in the Flutter 2.2 release just announced in the #GoogleIO Developer Keynote',
    'Catch \n@filiphracek and @Fitzface\nas they attempt to fully upgrade the Hacker News app and address the runtime bug they saw at the end of the previous episode',
    'School of Code announces Complete Dart Course for beginners',
  ];
  final replies = ['1', '15', '10', '19', '69', '3'];
  final retweets = ['10', '1k', '1', '9', '6', '30'];
  final likes = ['50', '10', '70', '2', '5', '10'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Theme.of(context).primaryColor,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 275,
            floating: false,
            pinned: true,
            title: Text('Profile'),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('assets/images/image2.jpeg')),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 190,
                    child: Container(
                      width: 80.0,
                      height: 20.0,
                      decoration: new BoxDecoration(
                        color: Colors.transparent,
                        border: new Border.all(color: Colors.grey, width: 2.0),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: new Center(
                        child: new Text(
                          'Edit Profile',
                          style: new TextStyle(
                            fontSize: 10,
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 120,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 80,
                              height: 80,
                              decoration: ShapeDecoration(
                                  shape: CircleBorder(),
                                  color: Theme.of(context).primaryColor),
                              child: Padding(
                                padding: EdgeInsets.all(3.0),
                                child: DecoratedBox(
                                  decoration: ShapeDecoration(
                                    shape: CircleBorder(),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/face0.png')),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text(
                          'SchoolofCode',
                          style: TextStyle(
                              color: Colors.grey[850],
                              fontWeight: FontWeight.bold,
                              fontSize: 15,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text(
                          '@schoolofcode.in',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage('assets/images/face0.png'),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            names[index],
                                            style: TextStyle(
                                                color: Colors.grey[850],
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              usernames[index],
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0.0, bottom: 8.0),
                                    child: Text(
                                      tweets[index],
                                      style: TextStyle(
                                        color: Colors.grey[850],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: images[index] == null
                                        ? null
                                        : Container(
                                            width: double.infinity,
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child:
                                                    Image.asset(images[index])),
                                          ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 16, 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 10.0,
                                              width: 18.0,
                                              child: IconButton(
                                                padding:
                                                    new EdgeInsets.all(0.0),
                                                icon: Icon(
                                                  Icons.chat_bubble_outline,
                                                  size: 18.0,
                                                  color: Colors.grey,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                            SizedBox(
                                                height: 10.0,
                                                width: 18.0,
                                                child: Text(
                                                  replies[index],
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                )),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 10.0,
                                              width: 18.0,
                                              child: IconButton(
                                                padding:
                                                    new EdgeInsets.all(0.0),
                                                icon: Icon(
                                                  Icons.replay,
                                                  size: 18.0,
                                                  color: Colors.grey,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                            SizedBox(
                                                height: 10.0,
                                                width: 18.0,
                                                child: Text(
                                                  retweets[index],
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                )),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 10.0,
                                              width: 18.0,
                                              child: IconButton(
                                                padding:
                                                    new EdgeInsets.all(0.0),
                                                icon: Icon(
                                                  Icons.favorite_border,
                                                  size: 18.0,
                                                  color: Colors.grey,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                            SizedBox(
                                                height: 10.0,
                                                width: 18.0,
                                                child: Text(
                                                  likes[index],
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                )),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                          width: 10.0,
                                          child: IconButton(
                                            padding: new EdgeInsets.all(0.0),
                                            icon: Icon(
                                              Icons.share,
                                              size: 18.0,
                                              color: Colors.grey,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Container(
                          width: double.infinity,
                          color: Colors.grey,
                          height: 0.5,
                        ),
                      )
                    ],
                  ),
              childCount: names.length,
            ),
          )
        ],
      ),
    ));
  }
}
