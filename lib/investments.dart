import 'package:flutter/material.dart';
import 'package:ui_designs/res/coach_dashboard_variables.dart';

import 'res/size_config.dart';

class Investments extends StatefulWidget {
  @override
  _InvestmentsState createState() => _InvestmentsState();
}
double screenWidth, screenHeight;

class _InvestmentsState extends State<Investments> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;


    return Container(
      child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverGrid.count(
              childAspectRatio: 0.7,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
              children: <Widget>[
                // _buildInvestmentCard(title, asset, rate, min, max, duration, status)
                _buildInvestmentCard('Fish Farm', 'asset', '6,500', '11', '14', '9', 'selling'),
                _buildInvestmentCard('Goat Farm', 'asset', '5,000', '11', '14', '9', 'selling'),
                _buildInvestmentCard('Maize Farm', 'asset', '2,500', '11', '14', '9', 'selling'),
                _buildInvestmentCard('Yam Farm', 'asset', '6,000', '11', '14', '9', 'selling'),
                _buildInvestmentCard('Poultry Farm', 'asset', '10,000', '11', '14', '9', 'selling'),
                _buildInvestmentCard('Fish Farm', 'asset', '3,000', '11', '14', '9', 'selling'),
                _buildInvestmentCard('Fish Farm', 'asset', '6,500', '11', '14', '9', 'selling'),

              ],
            ),
          ),
        ],
      ),

    );
  }

    _buildInvestmentCard(String title, String asset, String rate, String min, String max, String duration, String status) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 0.15 * screenHeight,
              width: 0.5 * screenWidth,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                child: Image(
                  image: AssetImage("assets/one.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title),
                Text('N ' + rate, 
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: textheadsize
                  ),
                ),
                Text(min + '% - '+ max +'% returns in ' + duration + ' months', 
                  style: TextStyle(
                    fontSize: textinfosizesm
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  topLeft: Radius.circular(5.0),
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(status),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
}