import 'package:flutter/material.dart';

class AppTitleText extends StatelessWidget {

  final Color firstColor;
  final Color secondColor;
  AppTitleText({@required this.firstColor,@required this.secondColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: 'MUZ',
          style: TextStyle(  fontFamily: 'CM Sans Serif',

            fontWeight: FontWeight.bold,
            color: firstColor,
            fontSize: 35.0,
          ),
          children: <TextSpan>[
            TextSpan(
                text: 'LOCK',
                style: TextStyle(  fontFamily: 'CM Sans Serif',
                    color: secondColor)),
          ],
        ),
      ),
    );
  }
}
