import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon,@required this.onPress});
  @override
  final IconData icon;
  final Function onPress;

  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:onPress ,
      child: Icon(icon),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),

      shape:CircleBorder( ),
      fillColor: Color(0xFF4C4F5E),

    );
  }
}