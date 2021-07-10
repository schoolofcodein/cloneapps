import 'package:cloneapps/constants.dart';
import 'package:flutter/material.dart';
import 'package:cloneapps/tabs/join_meet.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:share/share.dart';
// import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:clipboard/clipboard.dart';
import 'drawer.dart';

class Meet extends StatefulWidget {
  Meet({Key key}) : super(key: key);
  @override
  _MeetState createState() => _MeetState();
}

class _MeetState extends State<Meet> {
  CarouselController buttonCarouselController = CarouselController();
  int currentIndex = 0;
  List imgs = [
    'assets/google_meet.jpg',
    'assets/google_meet1.jpg',
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primary,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Text(
          'Meet',
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        actions: <Widget>[
          Container(
            width: 65,
            child: PopupMenuButton<String>(
              icon: CircleAvatar(
                  backgroundImage: AssetImage('assets/soc.png')),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: '1',
                    child: Text('1'),
                  ),
                  PopupMenuItem<String>(
                    value: '2',
                    child: Text('2'),
                  ),
                ];
              },
            ),
          ),
        ],
      ),
      body: Container(
        
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: primary,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(4),
                    color: blue,
                    textColor: Colors.white,
                    height: 40,
                    child: Text(
                      'New meeting',
                      style: TextStyle(
                        color: primary,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          letterSpacing: 0.0),
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.grey,
                            width: 0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                      _showModalBottomSheet(context);
                    },
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                    child: FlatButton(
                  // onPressed: () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (builder) => Join()));
                  //   print('pushed');
                  // },
                  height: 40,
                  child: Text('Join with a code',
                      style: TextStyle(
                          color: blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          letterSpacing: 0.0)),
                  color: primary,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(5)),
                )),
                SizedBox(width: 15),
              ],
            ),
            CarouselSlider(
              items: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 100.0),
                      alignment: Alignment.center,
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/google_meet2.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 200,
                            child: Text(
                              "Get a link you can share",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 25.0,color: Colors.white70),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            width: 250,
                            child: Text(
                              "Tap New meeting to get a link you can send to people you want to meet with",
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 15.0,),
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 100.0),
                      alignment: Alignment.center,
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/google_meet1.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 200,
                            child: Text(
                              "Your meeting is safe",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 25.0,color: Colors.white70),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            width: 250,
                            child: Text(
                              "No one can join the meeting unless invited or admitted by the host",
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 15.0),
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                  ],
                ),
              ],
              options: CarouselOptions(
                height: 500.0,
                enableInfiniteScroll: false,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgs, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        currentIndex == index ? blue : Colors.blue[100],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return BottomSheetContent();
      },
    );
  }
}

// ignore: must_be_immutable
class BottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: secondary,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: const Icon(
                            Icons.link,
                            color: Colors.grey
                          ),
                          title: Text(
                            'Get a meeting link to share',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                          ),
                          onTap: () {
                            showAlertDialog(context);
                          },
                        ),
                      ],
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.video_call,
                        color: Colors.grey
                      ),
                      title: Text(
                        'Start an instant meeting',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.calendar_today_rounded,
                          color: Colors.grey),
                      title: Text(
                        'Schedule in Google Calender',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.close, color: Colors.grey),
                      title: Text(
                        'Close',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  String link = "https://meet.google.com/udg-ekze-zvg";
  // String link = "https://";
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget shareBtn = (FlatButton.icon(
      onPressed: () {
        _onShareData(context);
      },
      icon: Icon(Icons.share),
      minWidth: 20,
      label: Text('Share'),
      color: Colors.blue[300],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Colors.blue)),
    ));
    // set up the AlertDialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: primary,
          contentPadding: EdgeInsets.fromLTRB(24, 20, 24, 2),
          title: Text("Here's the link to your meeting",style: TextStyle(color: Colors.grey[100]),),
          content: Builder(
            builder: (context) {
              var width = MediaQuery.of(context).size.width;

              return Container(
                height: 250,
                width: width,
                child: Column(
                  children: [
                    Text(
                        "Copy this link and send it to people you want to meet with. Be sure to save it so you can use it later, too.\n",
                        style: TextStyle(color: Colors.grey[100]),
                      ),
                    
                    Text(
                      link,
                      maxLines: 3,
                      style: TextStyle(
                        color: Colors.grey[100],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.copy,color: Colors.white70,),
                      onPressed: () {
                        print("pressed");
                         FlutterClipboard.copy(link).then((value) {
                           final snackBar = SnackBar(
                            content: Text('Copied to Clipboard'),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {},
                            ),
                          );
                          Scaffold.of(context).showSnackBar(snackBar);
                        });
                        // ClipboardManager.copyToClipBoard(link).then((result) {
                        //   final snackBar = SnackBar(
                        //     content: Text('Copied to Clipboard'),
                        //     action: SnackBarAction(
                        //       label: 'Undo',
                        //       onPressed: () {},
                        //     ),
                        //   );
                        //   Scaffold.of(context).showSnackBar(snackBar);
                        // });
                      },
                    ),
                    shareBtn,
                  ],
                ),
              );
            },
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
        );
      },
    );

    // show the dialog
  }

  _onShareData(BuildContext context) async {
    {
      await Share.share(
        link,
      );
    }
  }
}