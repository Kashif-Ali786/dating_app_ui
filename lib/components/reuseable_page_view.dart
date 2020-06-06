import 'package:datingapp/utilities/styles.dart';
import 'package:flutter/material.dart';

class ReuseablePageView extends StatelessWidget {
  final String imagePath;
  final String heading;
  final String subHeading;
  ReuseablePageView({this.imagePath, this.heading, this.subHeading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(imagePath,),
              height: 300.0,
              width: 500.0,
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            heading,
            style: kTitleStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.0),
          Text(
            subHeading,
            style: kSubtitleStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
