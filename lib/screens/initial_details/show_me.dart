import 'package:datingapp/components/app_title_text.dart';
import 'package:datingapp/components/reuseable_button.dart';
import 'package:datingapp/components/reuseable_details_page.dart';
import 'package:datingapp/components/round_button.dart';
import 'package:datingapp/screens/initial_details/select_sector.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'my_university_college.dart';

class ShowMe extends StatelessWidget {
  static const String route = 'show_me';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReuseableDetailPage(
          heading: 'Show Me',

          bodyWidget: Column(
            children: <Widget>[
              ReusebalelButton(buttonText: 'Men', onPress: () {}),
              SizedBox(height: 20),
              ReusebalelButton(buttonText: 'Women', onPress: () {}),
              SizedBox(height: 20),
              ReusebalelButton(buttonText: 'Every One', onPress: () {}),
            ],
          ),
          onPress: () {
            Navigator.pushNamed(context, MyUniversityCollege.route);
          },
        ),
      ),
    );
  }
}
