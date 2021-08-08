import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(StartUpPage());

class StartUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [SvgPicture.asset('assets/images/Fill_1.svg'), Text('aking')],
    );
  }
}
