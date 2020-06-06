import 'package:flutter/material.dart';

class ReusebalelButton extends StatelessWidget {
  final String imagePath;
  final String buttonText;
  final Function onPress;
  ReusebalelButton({@required this.buttonText, this.imagePath,@required this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: 50,
        width: 300,
        alignment: Alignment.center,
        child: Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            imagePath!=null?
            Image(
              image: AssetImage(
                imagePath,
              ),
            ):
            SizedBox(
              width: 15,
            ),
            Text(
              buttonText,
              style: TextStyle(  fontFamily: 'CM Sans Serif',
                  fontSize: 20,color: Colors.pinkAccent,fontWeight: FontWeight.w700),
            ),
            SizedBox(width: 10,)
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Colors.grey,style: BorderStyle.solid,width: 3)
        ),
      ),
    );
  }
}
