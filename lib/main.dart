import 'package:flutter/material.dart';
import 'package:todo_list_app/view/OnboardScreen/OnboardScreen.dart';
import 'package:todo_list_app/view/constants.dart';
import 'view/SplashScreen/SplashScreen.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SplashScreen(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aking todo list note',
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            fontFamily: 'avenirnextroundedpro',
            textTheme: TextTheme(
                bodyText1: TextStyle(color: kTextColor),
                bodyText2: TextStyle(color: kTextColor)),
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: OnboardScreen());
  }
}
