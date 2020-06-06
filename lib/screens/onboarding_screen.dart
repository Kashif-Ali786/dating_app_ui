import 'package:datingapp/components/corner_button.dart';
import 'package:datingapp/components/app_title_text.dart';
import 'package:datingapp/components/reuseable_page_view.dart';
import 'package:datingapp/components/round_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatefulWidget {
  static const String route='on_boarding_screen';
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.black87 : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          padding: EdgeInsets.only(bottom: 20.0, top: 50),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //***heading.......
              AppTitleText(
                firstColor: Colors.blueAccent,
                secondColor: Colors.pinkAccent,
              ),
              Container(
                height: 550.0,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    ReuseablePageView(
                      imagePath: 'assets/images/pic5.svg',
                      heading: 'Meet People',
                      subHeading: 'Biggest platform where people meet.',
                    ),
                    ReuseablePageView(
                      imagePath: 'assets/images/p1.png',
                      heading: 'Text Message',
                      subHeading:
                          'Biggest platform where people text! \nEvery One',
                    ),
                    ReuseablePageView(
                      imagePath: 'assets/images/pic3.svg',
                      heading: 'Video Calling',
                      subHeading: 'Free Video Calling On MuzLock Dating App.',
                    ),
                    ReuseablePageView(
                      imagePath: 'assets/images/pic4.svg',
                      heading: 'Sending Gifts',
                      subHeading:
                          'Free Sending Gifts To Your Loved\nOnes & Friends.',
                    ),
                  ],
                ),
              ),
              //***********indicators.................
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              _currentPage != _numPages - 1
                  ? Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomRight,
                        child: RoundButton(
                          height: 40,
                          width: 120,
                          buttonText: "Next",
                          //TODO: button funcitonality
                          onPress: () {print('Round button pressed');},
                        ),
                      ),
                    )
                  : Text(''),
            ],
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? CornerButton()
          : Text(''),
    );
  }
}

