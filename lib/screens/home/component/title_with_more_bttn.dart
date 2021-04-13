import 'package:flutter/material.dart';
import '../../../constants.dart';

class TitleWithMoreBttn extends StatelessWidget {
  TitleWithMoreBttn({
    this.title,
    this.press,
  });
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(
            text: title,
          ),
          Spacer(),
          FlatButton(
            color: kPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: press,
            child: Text(
              'more',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  final String text;

  TitleWithCustomUnderline({
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 7,
              color: kPrimaryColor.withOpacity(0.23),
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
            ),
          )
        ],
      ),
    );
  }
}
