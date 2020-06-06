import 'package:datingapp/components/dialog_component.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:datingapp/components/round_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginWithPhoneTwo extends StatelessWidget {
  static const String route = 'login_with_phone_two';
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
                    'Enter the code sent to your mobile',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  PinCodeTextField(
                    length: 4,
                    animationType: AnimationType.slide,
                    pinTheme: PinTheme(
                      activeColor: Colors.pinkAccent,
                      shape: PinCodeFieldShape.underline,
                    ),

                    animationDuration: Duration(milliseconds: 300),
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      print(value);

                    },
                  ),
                  RoundButton(
                    buttonText: 'Verify',
                    width: 200,
                    height: 40,
                    onPress: () {onAlertButtonPressed(context);},
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
