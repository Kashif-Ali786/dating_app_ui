import 'package:datingapp/screens/login_screens/login.dart';
import 'package:flutter/material.dart';

class CornerButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: double.infinity,
      child: GestureDetector(
        //TODO: button funcitonality
        onTap: () => Navigator.pushNamed(context, LoginScreen.route),
        child: Center(
          child: Container(
            color: Colors.black87,
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            child: Text(
              'Get started',
              style: TextStyle(
                fontFamily: 'CM Sans Serif',

                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
