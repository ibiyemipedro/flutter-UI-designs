import 'package:flutter/material.dart';

import 'res/coach_dashboard_variables.dart';

class WalletDesign extends StatefulWidget {
  static String tag = 'WalletDesign';
  @override
  _WalletDesignState createState() => _WalletDesignState();
}

class _WalletDesignState extends State<WalletDesign> {
  @override

 double screenWidth, screenHeight;

  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    final walletCard = Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromRGBO(35, 60, 103, 1),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                radius: 16,
                backgroundColor: Color.fromRGBO(50, 172, 121, 1),
                child: Icon(Icons.check, color: Colors.white, size: 24,),
              ),

              Text("MOMENTUM", style: TextStyle(fontStyle: FontStyle.italic, fontSize: textheadsize, color: Colors.white, fontWeight: FontWeight.w900),)
            ],
          ),
          SizedBox(height: 32,),

          Text("Loan Wallet", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700, letterSpacing: 2.0),),

          SizedBox(height: 32,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("BALANCE", style: TextStyle(fontSize: 12, color: Colors.blue[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                  Text("0.00", style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("EXPIRES", style: TextStyle(fontSize: 12, color: Colors.blue[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                  Text("8/22", style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("NEXT PAY", style: TextStyle(fontSize: 12, color: Colors.blue[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                  Text("8/22", style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                ],
              )
            ],
          )

        ],
      )
    );

    final title = Container(
      child: Text(
        'Loan Options',
        style: TextStyle(fontSize: textheadsize, fontWeight: FontWeight.bold, color: coThemeColor,),
        maxLines: 1,
      ),
    );

  final info = Container(
    color: Colors.white,
    child: Text(
      'Premium members of momemtum will be able to access up to NGN50,000 worth of loan, by completing few steps.  ',
      style: TextStyle(
        fontSize: textbodysize,
      ),
    ),
  );

    

    return Scaffold(      
      body: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
        ),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              walletCard,
              SizedBox(height: 20.0),
              title,
              SizedBox(height: 10.0),
              _buildParameters('Apply for Quick Loan', 'link'),
              SizedBox(height: 10.0),
              _buildParameters('Apply for Business Loan', 'link'),
              SizedBox(height: 10.0),
              _buildParameters('Loan History', 'link'),
            ],
          ),
        ),
      ),
    );
  }

    _buildParameters(String title, String link){
    return  GestureDetector(
      onTap: (){
      },
      child: Container(
        height: 0.1 * screenHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [BoxShadow(
              color: Colors.grey[100],
              spreadRadius: 10.0,
              blurRadius: 4.5
            )]
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.wifi_tethering,
                    color: Colors.lightBlue[900],
                  ),
                  SizedBox(
                    width: 16,
                  ),

                  Text(title, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.grey[700]),)

                ],
              ),
            ],
          ),
        ),
    );
  }
}