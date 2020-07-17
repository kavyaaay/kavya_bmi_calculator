import 'constants.dart';
import 'file:///C:/Users/Kavya/AndroidStudioProjects/bmi-calculator-flutter/lib/components/reusable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottom_container.dart';


class ResultPage extends StatelessWidget {


  ResultPage({@required this.bmi, @required this.bmiResult, @required this.bmiInterpretation});

  final bmi;
  final String bmiResult;
  final String bmiInterpretation;



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
            child: Center(
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusable(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text( bmiResult.toUpperCase(),
                      style: kResultPageText.copyWith(color: Colors.green)),
                  Text(
                    bmi,
                    style: kNumberTextStyle.copyWith(fontSize: 60.0),
                  ),
                  Text(
                    bmiInterpretation,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: BottomContainer(
              containerText: 'RE-CALCULATE YOUR BMI',
            ),
          ),
        ],
      ),
    );
  }
}