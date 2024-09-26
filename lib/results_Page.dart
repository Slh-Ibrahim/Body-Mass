import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'calculateButton.dart';
import 'constants.dart';
import 'input_Page.dart';

// ignore: must_be_immutable
class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.textInerp,
      @required this.textResult});
  final String textResult;
  final String bmiResult;
  final String textInerp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colorr: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textResult,
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: colorGender,
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textInerp,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CalculateBtn(
            setColor: colorGender,
            onPress: () {
              Navigator.pop(context);
            },
            txt: 'RE-CALCULATE',
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => ResultsPage()));
          //   },
          //   child: Container(
          //     child: Center(
          //       child: Text(
          //         'RE-CALCULATE',
          //         style: kLargButtonTextStyle,
          //       ),
          //     ),
          //     color: colorGender,
          //     margin: EdgeInsets.only(top: 10),
          //     width: double.infinity,
          //     height: 80.0,
          //   ),
          // )
        ],
      ),
    );
  }
}
