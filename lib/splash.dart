import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ui_designs/screens.dart';
import 'coaching_dashboard.dart';
import 'driver_details.dart';
import 'invest.dart';

class Splash extends StatefulWidget {
  @override
  createState() => new SplashState();
}

class SplashState extends State<Splash> {
  double screenWidth, screenHeight;
  final globalKey = new GlobalKey<ScaffoldState>();
//------------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    
    new Future.delayed(const Duration(seconds: 5), _handleTapEvent);
    return new Scaffold(
      key: globalKey,
      body: _splashContainer(),
    );
  }
//------------------------------------------------------------------------------
  Widget _splashContainer() {
    return GestureDetector(
        onTap: _handleTapEvent,
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: new BoxDecoration(color: Colors.lightBlueAccent),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                // new Container(
                //   child: new Image(
                //   image: new AssetImage("assets/bann.jpeg"),
                // )),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: new Text(
                    "Pedro Flutter UI Designs",
                    style: new TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ],
            )));
  }
//------------------------------------------------------------------------------
  void _handleTapEvent() async {
    if (this.mounted) {
      setState(() {
          Navigator.pushReplacement(
            context,
            new MaterialPageRoute(builder: (context) => new Screens()),
          );
      });
    }
  }
//------------------------------------------------------------------------------
}
