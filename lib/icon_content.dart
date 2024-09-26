import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData nameIcon;
  final String textLable;
  final Color iconColor;
  IconContent({@required this.nameIcon, this.textLable, this.iconColor});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          nameIcon,
          size: 80.0,
          color: iconColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textLable,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
