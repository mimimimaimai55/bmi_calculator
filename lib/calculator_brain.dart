import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.height,this.weight,required this.bmi}
      );

  final int? height;
  final int? weight;

  double bmi;

  String? calculateBMI(){
    bmi = weight! / pow(height!/100, 2);
    return bmi.toStringAsFixed(1);
  }

  String  getResult(){
    if(bmi >= 25){
      return '太りすぎです';
    }else if(bmi > 18.5){
      return '標準体型です';
    }else{
      return '痩せすぎです';
    }
  }

  String? getInterpretation() {
    if (bmi >= 25) {
      return '太りすぎです。もっともっと運動しましょう';
    } else if (bmi > 18.5) {
      return '標準体型です。その調子！';
    } else {
      return '痩せすぎです。もう少し食事を増やした方が良さそうですね〜';
    }
  }
}