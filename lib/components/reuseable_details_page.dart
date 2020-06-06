import 'package:datingapp/components/round_button.dart';
import 'package:flutter/material.dart';

import 'app_title_text.dart';
class ReuseableDetailPage extends StatelessWidget {
  final String heading;
  final Widget bodyWidget;
  final Widget icon;
  final Function onPress;
  ReuseableDetailPage(
      {@required this.heading, this.icon, @required this.bodyWidget,@required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        AppTitleText(firstColor: Colors.pinkAccent, secondColor: Colors.grey),
        icon == null ? Text('') : icon,
        Text(
          heading,
          style: TextStyle(  fontFamily: 'CM Sans Serif',
              fontSize: 30),
        ),
        bodyWidget,
        RoundButton(onPress: onPress),
      ],
    );
  }
}
