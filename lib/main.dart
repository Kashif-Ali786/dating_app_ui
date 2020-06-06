import 'package:datingapp/screens/initial_details/my_university_college.dart';
import 'package:datingapp/screens/initial_details/select_date_of_birth.dart';
import 'package:datingapp/screens/initial_details/select_gender.dart';
import 'package:datingapp/screens/initial_details/select_sector.dart';
import 'package:datingapp/screens/initial_details/show_me.dart';
import 'package:datingapp/screens/login_screens/login.dart';
import 'package:datingapp/screens/login_screens/login_with_phone1.dart';
import 'package:datingapp/screens/login_screens/login_with_phone2.dart';
import 'package:datingapp/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        buttonTheme: ButtonThemeData(buttonColor: Colors.pinkAccent),
      ),
      title: 'Flutter Onboarding UI',
      debugShowCheckedModeBanner: false,
      initialRoute: OnboardingScreen.route,
      routes: {
        OnboardingScreen.route: (context) => OnboardingScreen(),
        LoginScreen.route: (context) => LoginScreen(),
        LoginWithPhoneOne.route: (context) => LoginWithPhoneOne(),
        LoginWithPhoneTwo.route: (context) => LoginWithPhoneTwo(),
        SelectGender.route: (context) => SelectGender(),
        SelectSector.route: (context) => SelectSector(),
        SelectBirthday.route: (context) => SelectBirthday(),
        ShowMe.route:(context)=>ShowMe(),
        MyUniversityCollege.route:(context0)=>MyUniversityCollege(),
      },
    );
  }
}
