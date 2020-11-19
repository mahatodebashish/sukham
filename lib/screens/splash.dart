import 'dart:async';
import 'package:Sukham/screens/home.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> {
  //with TickerProviderStateMixin
/*  AnimationController controller;
  Animation<double> animation;*/

  //Firebase
  String title = "Title";
  String helper = "helper";

  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  @override
  void initState() {
    super.initState();

    //Firebase
    _firebaseMessaging.configure(
      onMessage: (message) async {
        setState(() {
          title = message["notification"]["title"];
          helper = "You have recieved a new notification";
        });
      },
      onResume: (message) async {
        setState(() {
          title = message["data"]["title"];
          helper = "You have open the application from notification";
        });
      },
    );


      Timer(
          Duration(seconds: 3),
              () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset('assets/images/logo.png')),
    );
    /* Container(
            color: Colors.white,
            child: FadeTransition(
                opacity: animation,
                child: Image.asset('assets/images/logo.png')));*/
  }

}