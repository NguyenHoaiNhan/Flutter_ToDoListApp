import 'package:flutter/material.dart';
import 'WaveClipperTool.dart';
import 'package:flutter_svg/svg.dart';
import '../size_config.dart';
import '../constants.dart';

class OnBoardContent extends StatelessWidget {
  const OnBoardContent(
      {Key? key,
      this.slideImage = 'default',
      this.slideTitle = 'default',
      this.slideDes = 'default',
      this.slideDeepColor = Colors.black})
      : super(key: key);

  final String slideImage;
  final String slideTitle, slideDes;
  final Color slideDeepColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(slideImage),
              SizedBox(height: 20),
              Text(
                slideTitle,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(36),
                  color: kPrimaryColor,
                ),
              ),
              Text(
                slideDes,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 9,
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
                        color: slideDeepColor,
                        height: double.infinity,
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: SizedBox(
                              height: 20,
                            ),
                          ),
                          Expanded(
                            flex: 8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Get Started",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(49, 49, 49, 1),
                                      // backgroundColor: Colors.white,
                                      fontFamily: 'avenirnextroundedpro',
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                      EdgeInsets.only(left: 115, right: 115),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Log In",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: 'avenirnextroundedpro',
                                        backgroundColor: slideDeepColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
