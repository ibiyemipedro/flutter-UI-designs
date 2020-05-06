import 'package:flutter/material.dart';

import 'res/coach_dashboard_variables.dart';


class CoachingDashboard extends StatefulWidget {
  @override
  _CoachingDashboardState createState() => _CoachingDashboardState();
}
double screenWidth, screenHeight;

class _CoachingDashboardState extends State<CoachingDashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          colors: coThemeColor,
          size: 25,
          ),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: coAppBackgroundColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back), 
            onPressed: (){},
            color: coIconColor,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu), 
              onPressed: (){},
              color: coIconColor,
            ),
          ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.4),
                height: 100,
                color: coAppBackgroundColor,
                child: Text(
                  'Get Coaching',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                  color: coAppBackgroundColor,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius : 2.0,
                      color: coSecondaryColor
                    )
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text('WALLET',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: coSecondaryColor
                          ),
                          ),
                        ),
                         Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 20.0),
                          child: Text('0.00',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}