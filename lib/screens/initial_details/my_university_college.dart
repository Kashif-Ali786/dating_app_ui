import 'package:datingapp/components/app_title_text.dart';
import 'package:datingapp/components/reuseable_button.dart';
import 'package:datingapp/components/reuseable_details_page.dart';
import 'package:datingapp/components/round_button.dart';
import 'package:datingapp/screens/initial_details/select_sector.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyUniversityCollege extends StatelessWidget {
  static const String route = 'my_university_college';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReuseableDetailPage(
          heading: 'My University / College is',

          bodyWidget: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(hintText: 'University of Punjab, Lahore'),
            ),
          ),
          onPress: () {
//            Navigator.pushNamed(context, );
          },
        ),
      ),
    );
  }
}
