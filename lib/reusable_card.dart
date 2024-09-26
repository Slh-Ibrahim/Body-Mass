import 'package:flutter/material.dart';

// import 'main.dart';
class ReusableCard extends StatelessWidget {
  // const ReusableCard({
  //   Key key,
  // }) : super(key: key); you can use it for animation widget
  final Color colorr;
  final Widget cardChild;
  final Function onPress;
  ReusableCard({@required this.colorr, this.cardChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colorr,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
