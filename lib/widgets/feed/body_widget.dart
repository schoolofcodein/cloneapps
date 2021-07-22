import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class BodyWidget extends StatelessWidget {
  
  String image;
  BodyWidget(this.image);
  @override

  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
