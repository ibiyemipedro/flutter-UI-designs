import 'package:flutter/material.dart';
import 'package:ui_designs/awaiting_ride.dart';
import 'package:ui_designs/driver_details.dart';
import 'package:ui_designs/invest.dart';
import 'package:ui_designs/investments.dart';
import 'package:ui_designs/login_one.dart';

import 'contact.dart';
import 'wallet_design.dart';

class Screens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[

            Container(
            child: OutlineButton(
              onPressed: (){
                Navigator.push(context,new MaterialPageRoute(
                    builder: (context) => DriverDetails()
                  )
                );

              },
              child: Text('Driver Details'),
              ),  
            ),

            Container(
            child: OutlineButton(
              onPressed: (){
                 Navigator.push(context,new MaterialPageRoute(
                    builder: (context) => Invest()
                  )
                );
              },
              child: Text('Invest'),
              ),  
            ),

            Container(
            child: OutlineButton(
              onPressed: (){
                 Navigator.push(context,new MaterialPageRoute(
                    builder: (context) => Investments()
                  )
                );
              },
              child: Text('Investments'),
              ),  
            ),
            
            Container(
            child: OutlineButton(
              onPressed: (){
                 Navigator.push(context,new MaterialPageRoute(
                    builder: (context) => WalletDesign()
                  )
                );
              },
              child: Text('Wallet Design'),
              ),  
            ),

            Container(
            child: OutlineButton(
              onPressed: (){
                 Navigator.push(context,new MaterialPageRoute(
                    builder: (context) => ContactUs()
                  )
                );
              },
              child: Text('Contact Us'),
              ),  
            ),

            Container(
            child: OutlineButton(
              onPressed: (){
                 Navigator.push(context,new MaterialPageRoute(
                    builder: (context) => LoginOne()
                  )
                );
              },
              child: Text('Login One'),
              ),  
            ),

            Container(
            child: OutlineButton(
              onPressed: (){
                 Navigator.push(context,new MaterialPageRoute(
                    builder: (context) => AwaitingRide()
                  )
                );
              },
              child: Text('Awaiting Ride'),
              ),  
            ),

          ],
          
        ),
      ),
    );
  }
}