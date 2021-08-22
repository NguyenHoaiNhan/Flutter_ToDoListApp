import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_list_app/view/OnboardScreen/WaveClipperTool.dart';
import 'package:todo_list_app/view/constants.dart';
import 'package:todo_list_app/view/size_config.dart';

class OnboardBody extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<OnboardBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset('assets/images/undraw_events.svg'),
                  SizedBox(height: 20),
                  Text(
                    'Welcome to aking',
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(36),
                        color: kPrimaryColor),
                  ),
                  Text(
                    "What's going to happen tomorrow?",
                  )
                ],
              ),
            ),
            Expanded(
                flex: 3,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.25,
                      child: ClipPath(
                        clipper: WaveClipper_light(),
                        child: Container(
                          color: Colors.red,
                          height: double.infinity,
                        ),
                      ),
                    ),
                    ClipPath(
                      clipper: WaveClipper_deep(),
                      child: Container(
                        color: Color.fromRGBO(249, 96, 96, 1),
                        height: double.infinity,
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
