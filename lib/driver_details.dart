import 'package:flutter/material.dart';
// import 'package:fluttercookie/bottom_bar.dart';

class DriverDetails extends StatelessWidget {
  final assetPath, cookieprice, cookiename;

  DriverDetails({this.assetPath, this.cookieprice, this.cookiename});
  @override

  double screenWidth, screenHeight;

  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Driver',
            style: TextStyle(
                
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
        children: [
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Phill Ola',
              style: TextStyle(
                      
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532))
            ),
          ),
            SizedBox(height: 15.0),
            Hero(
              tag: 'assets/one.png',
              child: Image.asset('assets/one.png',
              height: 150.0,
              width: 100.0,
              fit: BoxFit.contain
              )
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text('QKIX56-AA',
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      
                      fontSize: 24.0)),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Text('Phil is a professional driver, with 4 years driving experience. Currently drives a blue toyota camry.',
                textAlign: TextAlign.center,
                style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFFB4B8B9))
                ),
              ),
            ),
            SizedBox(height: 5.0),
             Center(
              child: RichText(
                text: TextSpan(
                  // style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: '500', style: TextStyle(color:Color(0xFFF17532), fontFamily: 'Montserrat', fontSize: 25, fontWeight: FontWeight.bold)),
                    TextSpan(text: ' per Seat', style: TextStyle(color:Color(0xFFB4B8B9), fontFamily: 'Montserrat'))
                  ]
                ),
              ),
            ),
            SizedBox(height: 5.0),
            _buildParameters('Destination', '8 Providence Street Lekki, Lagos'),
            _buildParameters('Current Location', 'Jibowu, Yaba, Lagos'),
            _buildParameters('Available Seats', '3'),
            _buildParameters('Rating', '4.88/5.0'),
            
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color(0xFFF17532)
                ),
                child: Center(
                  child: Text('Join Ride',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                ),
                  )
                )
              )
            )
        ]
      ),

    );
  }

  _buildParameters(String title, String details){
    return  Row(
      children: <Widget>[
        Container(
          width: 0.3 * screenWidth,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Text(title),
          ),
        ),
        Container(
          width: 0.7 * screenWidth,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Text(details),
          ),
        )
      ],
    );

  }
}
