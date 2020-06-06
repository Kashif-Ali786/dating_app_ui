import 'package:datingapp/components/app_title_text.dart';
import 'package:datingapp/components/reuseable_button.dart';
import 'package:datingapp/components/reuseable_details_page.dart';
import 'package:datingapp/components/round_button.dart';
import 'package:datingapp/screens/initial_details/select_date_of_birth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectSector extends StatefulWidget {
  static const String route = 'select_sector';

  @override
  _SelectSectorState createState() => _SelectSectorState();
}

class _SelectSectorState extends State<SelectSector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReuseableDetailPage(
          heading: 'I Want To Be Interested In?',
          bodyWidget: Column(
            children: <Widget>[
              ReusebalelButton(buttonText: 'Shiya', onPress: () {}),
              SizedBox(height: 20),
              ReusebalelButton(buttonText: 'Sunni', onPress: () {}),
              SizedBox(height: 20),
              ReusebalelButton(buttonText: 'Wahabi', onPress: () {}),
              SizedBox(height: 20),
              ReusebalelButton(buttonText: 'Deobandi', onPress: () {}),
              SizedBox(height: 20),
              ReusebalelButton(buttonText: 'Sunni', onPress: () {}),
            ],
          ),
          onPress: () {
            Navigator.pushNamed(context, SelectBirthday.route);
          },
        ),
      ),
    );
  }
}
