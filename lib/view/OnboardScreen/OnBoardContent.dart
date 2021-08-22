import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_list_app/view/size_config.dart';

class OnBoardContent extends StatelessWidget {
  final String text1, text2, image;
  const OnBoardContent(
      {Key? key, this.text1 = '1', this.text2 = '2', this.image = '3'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(image),
        SizedBox(height: 20),
        Text(text1,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: Color.fromRGBO(49, 49, 49, 1),
            )),
        Text(text2)
      ],
    );
  }
}
