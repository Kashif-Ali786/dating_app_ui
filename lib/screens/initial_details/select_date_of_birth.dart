import 'package:datingapp/components/app_title_text.dart';
import 'package:datingapp/components/reuseable_button.dart';
import 'package:datingapp/components/reuseable_details_page.dart';
import 'package:datingapp/components/round_button.dart';
import 'package:datingapp/screens/initial_details/show_me.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

class SelectBirthday extends StatefulWidget {
  static const String route = 'select_birthday';

  @override
  _SelectBirthdayState createState() => _SelectBirthdayState();
}

class _SelectBirthdayState extends State<SelectBirthday> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReuseableDetailPage(
          heading: 'When Your Data of Birth is??',
          icon: Icon(
            FontAwesomeIcons.birthdayCake,
            size: 80,
            color: Colors.amber,
          ),
          bodyWidget: Container(
            height: 180,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: _dateTime,
              onDateTimeChanged: (dateTime){
                print(dateTime);
                setState(() {
                  _dateTime=dateTime;
                });
              },
            ),
          ),
          onPress: () {
            Navigator.pushNamed(context, ShowMe.route);

          },
        ),
      ),
    );
  }
}
