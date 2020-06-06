import 'package:datingapp/components/round_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_with_phone2.dart';

class LoginWithPhoneOne extends StatelessWidget {
  static const String route = 'login_with_phone_one';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/selfie.jpg'),
                height: 200,
                width: 300,
              ),
              Text(
                'Verify Your Number',
                style: TextStyle(  fontFamily: 'CM Sans Serif',
                    fontSize: 24),
              ),
              Text(
                'Please enter your mobile number to start, verification code will be sent',style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(hintText: 'Enter Mobile Number'),
                textAlign: TextAlign.center,
              ),
              RoundButton(
                buttonText: 'Continue',
                width: 200,
                height: 40,
                onPress: () {
                  Navigator.pushNamed(context, LoginWithPhoneTwo.route);
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
