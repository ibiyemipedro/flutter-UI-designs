import 'package:flutter/material.dart';

class AwaitingRide extends StatefulWidget {
  @override
  _AwaitingRideState createState() => _AwaitingRideState();
}

class _AwaitingRideState extends State<AwaitingRide> {
  double screenWidth, screenHeight;

  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Awaiting',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Ride',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                 SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Phill Ola',
              style: TextStyle(
                      
                      fontSize: 20.0,
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
              child: Text('Car ID : QKIX56-AA',
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      
                      fontSize: 24.0)),
            ),
            SizedBox(height: 10.0),
             Center(
              child: RichText(
                text: TextSpan(
                  // style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: 'Fee ', style: TextStyle(color:Color(0xFFB4B8B9), fontFamily: 'Montserrat')),

                    TextSpan(text: '₦ 500', style: TextStyle(color:Color(0xFFF17532), fontFamily: 'Montserrat', fontSize: 25, fontWeight: FontWeight.bold)),
                    // TextSpan(text: ' per Seat', style: TextStyle(color:Color(0xFFB4B8B9), fontFamily: 'Montserrat'))
                  ]
                ),
              ),
            ),
            SizedBox(height: 10.0),
            _buildParameters('Destination', '8 Providence Street Lekki, Lagos'),
            _buildParameters('Pick Up Point', 'Jibowu, Yaba, Lagos'),
            _buildParameters('Number of Seats', '3'),
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
                  child: Text('Cancel Ride',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                ),
                  )
                )
              )
            ),
            SizedBox(height: 20.0),
               
              ],
            ),
          )
        ],
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
          width: 0.5 * screenWidth,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Text(details),
          ),
        )
      ],
    );

  }

}