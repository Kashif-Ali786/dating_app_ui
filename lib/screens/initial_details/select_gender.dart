import 'package:datingapp/components/app_title_text.dart';
import 'package:datingapp/components/reuseable_button.dart';
import 'package:datingapp/components/reuseable_details_page.dart';
import 'package:datingapp/components/round_button.dart';
import 'package:datingapp/screens/initial_details/select_sector.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectGender extends StatelessWidget {
  static const String route = 'select_gender';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReuseableDetailPage(
          heading: 'What Is Your Gender?',
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.male,
                size: 80,
                color: Colors.pinkAccent,
              ),
              Icon(
                FontAwesomeIcons.female,
                size: 80,
                color: Colors.blueAccent,
              ),
            ],
          ),
          bodyWidget: Column(
            children: <Widget>[
              ReusebalelButton(buttonText: 'Men', onPress: () {}),
              SizedBox(height: 20),
              ReusebalelButton(buttonText: 'Women', onPress: () {}),
            ],
          ),
          onPress: () {
            Navigator.pushNamed(context, SelectSector.route);
          },
        ),
      ),
    );
  }
}
