import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_list_app/view/OnboardScreen/OnBoardContent.dart';
import 'package:todo_list_app/view/OnboardScreen/WaveClipperTool.dart';
import 'package:todo_list_app/view/constants.dart';
import 'package:todo_list_app/view/size_config.dart';
import 'package:todo_list_app/model/SlideScreen.dart';

class OnboardBody extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<OnboardBody> {
  late final int index;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: PageView.builder(
          itemCount: slideList.length,
          itemBuilder: (context, index) => OnBoardContent(
            slideTitle: slideList[index].slideTitle,
            slideDes: slideList[index].slideDes,
            slideImage: slideList[index].slideImage,
            slideDeepColor: slideList[index].slideDeepColor,
          ),
        ),
      ),
    );
  }
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
