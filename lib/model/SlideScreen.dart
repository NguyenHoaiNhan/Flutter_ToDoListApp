import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class SlideScreen {
  final String slideTitle;
  final String slideDes;
  final String slideImage;
  final Color slideDeepColor;

  SlideScreen(
      {required this.slideTitle,
      required this.slideDes,
      required this.slideImage,
      required this.slideDeepColor});
}

final slideList = [
  SlideScreen(
    slideTitle: 'Welcome to aking',
    slideDes: "What's going to happen tomorrow?",
    slideImage: 'assets/images/undraw_events.svg',
    slideDeepColor: Color.fromRGBO(249, 96, 96, 1),
  ),
  SlideScreen(
    slideTitle: 'Welcome to aking',
    slideDes: "What's going to happen tomorrow?",
    slideImage: 'assets/images/undraw_superhero.svg',
    slideDeepColor: Color.fromRGBO(96, 116, 249, 1),
  ),
  SlideScreen(
    slideTitle: 'Welcome to aking',
    slideDes: "What's going to happen tomorrow?",
    slideImage: 'assets/images/undraw_analysis.svg',
    slideDeepColor: Color.fromRGBO(133, 96, 249, 1),
  ),
];
