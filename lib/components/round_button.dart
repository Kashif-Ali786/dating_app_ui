import 'package:datingapp/utilities/styles.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Function onPress;
  final String buttonText;
  final double height;
  final double width;

  RoundButton(
      {@required this.onPress, this.buttonText, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 20),
      height: height == null ? 45 : height,
      width: width == null ? 250 : width,
      child: RaisedButton(
          child: Text(
            buttonText==null?'Continue':buttonText,
            style: kRoundButtonStyle,
          ),
          onPressed: onPress,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          )),
    );
  }
}
