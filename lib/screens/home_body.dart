import 'package:flutter/material.dart';

class TwitterBody extends StatelessWidget {
  final profileimages = [
    'assets/images/face1.jpeg',
    'assets/images/face2.jpeg',
    'assets/images/face3.jpeg',
    'assets/images/face4.jpeg',
    'assets/images/image1.jpeg',
    'assets/images/face5.jpeg',
  ];
  final names = ['michael', 'hilary', 'janny', 'jordan', 'papaya', 'pompeo'];
  final usernames = [
    '@michael',
    '@hilary',
    '@janny',
    '@guava',
    '@jordan',
    '@pompeo'
  ];
  final images = [
    null,
    'assets/images/image1.jpeg',
    null,
    'assets/images/face4.jpeg',
    null,
    'assets/images/face5.jpeg',
  ];
  final tweets = [
    'Create the highest, grandest vision possible for your life, because you become what you believe.',
    'When you can’t find the sunshine, be the sunshine',
    'The grass is greener where you water it',
    'Wherever life plants you, bloom with grace',
    'So, what if, instead of thinking about solving your whole life, you just think about adding additional good things. One at a time. Just let your pile of good things grow',
    'Little by little, day by day, what is mean for you WILL find its way',
  ];
  final replies =[
    '1',
    '15',
    '10',
    '19',
    '69',
    '3'
  ];
    final retweets =[
    '10',
    '1k',
    '1',
    '9',
    '6',
    '30'
  ];
    final likes =[
    '50',
    '10',
    '70',
    '2',
    '5',
    '10'
  ];
  Widget getList() {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => Column(
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
                          image: AssetImage(profileimages[index]),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      usernames[index],
                                      style: TextStyle(
                                          color: Colors.grey[600],
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
                            padding:
                                const EdgeInsets.only(top: 0.0, bottom: 8.0),
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
                                        child: Image.asset(images[index])),
                                  ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 10.0,
                                      width: 18.0,
                                      child: IconButton(
                                        padding: new EdgeInsets.all(0.0),
                                        icon: Icon(
                                          Icons.chat_bubble_outline,
                                          size: 18.0,
                                          color: Colors.grey,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Center(
                                      child: SizedBox(
                                          height: 10.0,
                                          width: 18.0,
                                          child: Text(
                                            replies[index],
                                            style: TextStyle(color: Colors.grey),
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 10.0,
                                      width: 18.0,
                                      child: IconButton(
                                        padding: new EdgeInsets.all(0.0),
                                        icon: Icon(
                                          Icons.replay,
                                          size: 18.0,
                                          color: Colors.grey,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Center(
                                      child: SizedBox(
                                          height: 10.0,
                                          width: 18.0,
                                          child: Text(
                                            retweets[index],
                                            style: TextStyle(color: Colors.grey),
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 10.0,
                                      width: 18.0,
                                      child: IconButton(
                                        padding: new EdgeInsets.all(0.0),
                                        icon: Icon(
                                          Icons.favorite_border,
                                          size: 18.0,
                                          color: Colors.grey,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Center(
                                      child: SizedBox(
                                          height: 10.0,
                                          width: 18.0,
                                          child: Text(
                                            likes[index],
                                            style: TextStyle(color: Colors.grey),
                                          )),
                                    ),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: getList(),
    );
  }
}
