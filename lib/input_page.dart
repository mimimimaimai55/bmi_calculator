import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xff1F1B30);
const bottomContainerColor = Color(0xFFEB1555);

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
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour:activeCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour:activeCardColor,
              ),
              )],
          )),
          Expanded(
            child: ReusableCard(
              colour:activeCardColor,
            ),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour:Colors.blue,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour:activeCardColor,
                ),
              ),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width:double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.colour,this.cardChild});

  final Color? colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:cardChild,
    margin: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
      color: colour,
      borderRadius: BorderRadius.circular(10.0),
    ),
    );
  }
}
