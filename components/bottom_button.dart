import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.ButtonTitle,@required this.onTap});
  final Function onTap;
  final String ButtonTitle;

  @override
  Widget build(BuildContext context) {
    return     GestureDetector(

      onTap: onTap,

      child:   Container(

        child: Center(

          child: Text(

            ButtonTitle,

            style: kLargeButtonTextStyle,

          ),

        ),

        color:kbottomContainerColour ,

        margin: EdgeInsets.only(top:5.0),

        padding: EdgeInsets.only(bottom: 10.0),

        width: double.infinity,

        height:kbottomContainerHeight ,



      ),

    );
  }
}
