import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:learning_flutter/EnterNumber.dart';
import 'HomePage.dart';

void main() => runApp(MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    ));

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => HomeScreen()
              )
            );
          },
          child: Image.asset(
            "assets/app_logo.png",
            height: 150.0,
            width: 150.0,
          ),
        ),
      ),
    );
  }
}