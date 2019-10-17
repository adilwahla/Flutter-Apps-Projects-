import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.BmIResult,@required this.ResultText,@required this.Interpretation});
  final String BmIResult;
  final String ResultText;
  final String Interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child:Text(
                'Your Result',
                style: kTiltleTextStye,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              Colour: kactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
    ResultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    BmIResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    Interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,

                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            ButtonTitle: 'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
