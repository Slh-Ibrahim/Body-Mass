import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class CalculateBtn extends StatelessWidget {
  final Color setColor;
  final Function onPress;
  final String txt;
  CalculateBtn({@required this.setColor, @required this.onPress, this.txt});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            txt,
            style: kLargButtonTextStyle,
          ),
        ),
        color: setColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}
