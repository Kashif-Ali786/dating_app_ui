
import 'package:datingapp/screens/initial_details/select_gender.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

onAlertButtonPressed(context) {
  Alert(

    context: context,

    title: "Verified!",
    desc: "Successfully",

    buttons: [
      DialogButton(
        color: Colors.pinkAccent,
        child: Text(
          "OKAY",style: TextStyle(color: Colors.white,  fontFamily: 'CM Sans Serif',
        ),
        ),
        onPressed: () => Navigator.pushNamed(context, SelectGender.route),
        width: 120,
      )
    ],
  ).show();
}