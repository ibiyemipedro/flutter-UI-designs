import 'package:flutter/material.dart';
import 'splash.dart';


void main() {
  runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    // Login.tag: (context) => Login(),


  };

  // This widget is the root of your application. This is a test text
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Designs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Montserrat',
      ),
      home: Splash(),
      routes: routes,
    );
  }
}
