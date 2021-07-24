import 'package:cloneapps/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:cloneapps/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter',
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryColorDark: Colors.white,
        accentColor: Color(0xff1CA1F1),
        iconTheme: IconThemeData(color: Color(0xff1CA1F1))
      ),
      home: AnimatedSplashScreen(),
    );
  }
}