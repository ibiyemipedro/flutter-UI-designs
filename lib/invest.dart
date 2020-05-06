import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

import 'investments.dart';
import 'res/coach_dashboard_variables.dart';

class Invest extends StatefulWidget {
  @override
  _InvestState createState() => _InvestState();
}

class _InvestState extends State<Invest> with SingleTickerProviderStateMixin {


  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }


  double screenWidth, screenHeight;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

     return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.arrow_back_ios, color: Colors.black),
                Spacer(),
              ],
            ),
          ),
          SizedBox(height: 0.005 * screenHeight),

          Container(
            child: Text('Momentum Investments', style: TextStyle(fontSize: textheadsize), textAlign: TextAlign.start,),
          ),

          SizedBox(height: 0.005 * screenHeight),

          Container(
            height: 0.12 * screenHeight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SearchBar(
                hintText: 'Search Investment',
                icon: Icon(Icons.search),
                onSearch: null,
                onItemFound: null,
              ),
            ),
          ),
          // SizedBox(height: 5 * SizeConfig.heightMultiplier,),
          TabBar(
            controller: tabController,
            indicatorColor: Colors.green,
              indicatorWeight: 3.0,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text("All"),
                ),
                Tab(
                  child: Text("Latest"),
                ),
                Tab(
                  child: Text("Agriculture"),
                ),
                Tab(
                  child: Text("Others"),
                ),
              ]),
          Expanded(
            child: Container(
              child: TabBarView(
                controller: tabController,
                  children: <Widget>[
                    Investments(),
                    Investments(),
                    Investments(),
                    Investments(),
              ]),
            ),
          )
        ],
      ),
    );
  }

}
