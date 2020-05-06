import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const bgColor = Colors.deepPurpleAccent;

const curveGradient = RadialGradient(
  colors: <Color>[
    Color(0XFF313F70),
    Color(0XFF203063),
  ],
  focalRadius: 16,
);

const vpnStyle = TextStyle(
  fontWeight: FontWeight.w600,
  color: Colors.white,
  fontSize: 34,
);

const txtSpeedStyle = TextStyle(
  fontWeight: FontWeight.w300,
  fontSize: 15,
  color: Color(0XFF6B81BD),
);

const greenGradient = LinearGradient(
  colors: <Color>[
    Color(0XFF00D58D),
    Color(0XFF00C2A0),
  ],
);

const kenyaFlagUrl =
    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Kenya.svg/255px-Flag_of_Kenya.svg.png';

const ugandaFlagUrl =
    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Flag_of_Uganda.svg/255px-Flag_of_Uganda.svg.png';

const connectedStyle = TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.w600,
  height: 1.6,
  color: Colors.white,
);
const connectedGreenStyle = TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.w600,
  color: Colors.greenAccent,
);
const connectedSubtitle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);
const locationTitleStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: Color(0XFF9BB1BD),
);

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // I am using bezier curves to compe up with perfect curve for clipping

    Path path = Path()
      ..moveTo(0, size.height)
      ..cubicTo(size.width * 1 / 4, size.height * 14 / 15, size.width * 0.175,
          size.height * 2 / 3, size.width * 0.5, size.height * 2 / 3)
      ..cubicTo(size.width * 0.825, size.height * 2 / 3, size.width * 0.725,
          size.height * 14 / 15, size.width, size.height)
          ..lineTo(size.width, 0)
          ..lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}