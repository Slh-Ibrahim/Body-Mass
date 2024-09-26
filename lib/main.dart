import 'package:flutter/material.dart';
import 'input_Page.dart';
import 'results_Page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //0xFF0A0D22 //0xFF111428
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D12),
        //accentTextTheme: TextTheme()
      ),
      //home: InputPage(),
      initialRoute: '1',
      routes: {
        '1': (context) => InputPage(),
        '2': (context) => ResultsPage(),
      },
    );
  }
}
