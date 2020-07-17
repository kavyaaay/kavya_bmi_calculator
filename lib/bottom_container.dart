import 'package:flutter/material.dart';
import 'constants.dart';

class BottomContainer extends StatelessWidget {

  final String containerText;

  BottomContainer({@required this.containerText});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Center(
          child: Text(
            containerText,
            style: kBottomContainerTextStyle,
          )),
      color: kBottomContainerColour,
      width: double.infinity,
      height: kBottomContainerHeight,
      margin: EdgeInsets.only(top: 10.0),
    );
  }
}
