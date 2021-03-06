import 'package:flutter/material.dart';
import 'package:todo_list_app/view/OnboardScreen/WaveClipperTool.dart';
import '../OnboardScreen/OnBoardContent.dart';

class OnboardBody extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<OnboardBody> {
  int currentPage = 0;

  List<Map<String, Color>> currentColor = [
    {
      "Light": Color.fromRGBO(254, 223, 223, 1),
      "Deep": Color.fromRGBO(249, 96, 96, 1)
    },
    {
      "light": Color.fromRGBO(223, 227, 254, 1),
      "Deep": Color.fromRGBO(96, 116, 249, 1)
    },
    {
      "Light": Color.fromRGBO(231, 223, 254, 1),
      "Deep": Color.fromRGBO(133, 96, 249, 1)
    }
  ];

  List<Map<String, String>> currentData = [
    {
      "text1": "Welcome to aking",
      "text2": "What's going to happen tomorrow?",
      "image": "assets/images/undraw_events.svg",
    },
    {
      "text1": "Work happens",
      "text2": "Get notified when work happens",
      "image": "assets/images/undraw_superhero.svg"
    },
    {
      "text1": "Tasks and assign",
      "text2": "Task and assign them to colleagues",
      "image": "assets/images/undraw_analysis.svg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            // Area for image and the text
            Expanded(
              flex: 5,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: currentData.length,
                itemBuilder: (context, index) => OnBoardContent(
                  text1: currentData[index]['text1']!,
                  text2: currentData[index]['text2']!,
                  image: currentData[index]['image']!,
                ),
              ),
            ),
            // Area for the dot indicator
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        currentData.length, (index) => buildDot(index: index)),
                  ),
                ],
              ),
            ),
            // Area for Wave image
            Expanded(
              flex: 4,
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
                                      fontFamily: 'avenirnextroundedpro'),
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
                                      backgroundColor:
                                          Color.fromRGBO(249, 96, 96, 1)),
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
    );
  }

  Container buildDot({int index = 0}) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 12 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.redAccent : Colors.black,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
