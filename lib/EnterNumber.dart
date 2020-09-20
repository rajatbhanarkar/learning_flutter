import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class GetUserNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Your Phone Number"
              ),
            )
          ],
        )
    );
  }
}
