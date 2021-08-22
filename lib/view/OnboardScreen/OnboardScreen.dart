import 'package:flutter/material.dart';
import 'package:todo_list_app/view/OnboardScreen/OnboardBody.dart';
import 'package:todo_list_app/view/size_config.dart';

class OnboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(body: OnboardBody());
  }
}
