import 'package:datingapp/components/app_title_text.dart';
import 'package:datingapp/components/reuseable_button.dart';
import 'package:datingapp/screens/login_screens/login_with_phone1.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String route = 'login_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.amber, Colors.pink, Colors.blue]),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: AppTitleText(
                      firstColor: Colors.white,
                      secondColor: Colors.black,
                    ),),
                Expanded(
                    flex: 1,
                    child: Text(
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.',
                      style: TextStyle(  fontFamily: 'CM Sans Serif',
                          color: Colors.white, fontSize: 14),
                    )),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ReusebalelButton(
                        onPress: (){Navigator.pushNamed(context, LoginWithPhoneOne.route);},
                        buttonText: 'Login With Number',
                        imagePath: 'assets/images/google.png',
                      ),
                      ReusebalelButton(
                        onPress: (){print('login button');},
                        buttonText: 'Login With Gmail',
                        imagePath: 'assets/images/google.png',
                      ),
                      ReusebalelButton(
                        onPress: (){print('login button');},
                        buttonText: 'Login With Facebook',
                        imagePath: 'assets/images/facebook.png',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(""),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

