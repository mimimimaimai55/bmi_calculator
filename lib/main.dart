import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF10111F),
        scaffoldBackgroundColor:  Color(0xFF10111F),
        accentColor: Colors.white,
        textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.white)),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context){
  return Scaffold(
      appBar: AppBar(
      title: Text('BMI CALCULATOR'),
      ),
  body:Center(
      child: Text('Body Text'),
      ),
floatingActionButton: FloatingActionButton(
  onPressed: (){},
      child: Icon(Icons.add),
      ),
      );
}
}
