import 'dart:math';


class CalculatorBrain{
  CalculatorBrain({this.height,this.weight});
  final int height;
  final int weight;
  double _BMI;

  String CalculateBMI(){
     _BMI=weight/pow(height/100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String getResult(){
    if(_BMI >= 25){
      return 'Over Weight';
    }
    else if (_BMI > 18.3){
      return 'Normal';
    }
    else
      return 'Under weight';
  }
  String Interpretation(){
    if(_BMI >= 25){
      return 'You are Over Weight Do exercise Regularly';
    }
    else if (_BMI > 18.3){
      return 'You are Normal GOOD job';
    }
    else
      return 'You are underWeight Do eat more :)';
  }
}
