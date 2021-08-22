import 'package:flutter/material.dart';

// apply the quadratic bezier curve for drawing the UI

class WaveClipper_light extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    //path.lineTo(0, size.height / 3);
    path.moveTo(0, size.height * 0.15);

    var firstStart = Offset(size.width * 0.3, size.height * 0.02);
    var firstEnd = Offset(size.width * 0.55, size.height * 0.3);

    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    path.lineTo(0, size.height * 0.3);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

class WaveClipper_deep extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();

    path.moveTo(0, size.height * 0.15);

    var firstStart = Offset(size.width * 0.4, size.height * 0.3);
    var firstEnd = Offset(size.width * 0.6, size.height * 0.13);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width * 0.75, 0);
    var secondEnd = Offset(size.width * 0.9, size.height * 0.1);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    var thirdStart = Offset(size.width * 0.98, size.height * 0.15);
    var thirdEnd = Offset(size.width, size.height * 0.1);
    path.quadraticBezierTo(
        thirdStart.dx, thirdStart.dy, thirdEnd.dx, thirdEnd.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
