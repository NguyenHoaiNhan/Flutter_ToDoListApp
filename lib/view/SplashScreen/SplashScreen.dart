import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  __SplashScreenState createState() => __SplashScreenState();
}

class __SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/Fill_1.svg'),
              SizedBox(height: 20),
              Text('aking',
                  style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 4,
                            offset: Offset(0, 4))
                      ],
                      color: Colors.black,
                      fontSize: 48,
                      fontFamily: 'avenirnextroundedpro'))
              // CircularProgressIndicator(
              //   valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
              // )
            ],
          ),
        ));
  }
}
