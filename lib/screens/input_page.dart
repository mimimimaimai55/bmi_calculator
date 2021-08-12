import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import 'results_page.dart';
import '../components/bottom_botton.dart';
import '../components/round_icon_button.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 19;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        onPress: (){
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        colour: selectedGender == Gender.male ? kActiveCardColour : kInactiveCardColour,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.mars, label: 'MALE'),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        onPress: (){
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        colour: selectedGender == Gender.female ? kActiveCardColour : kInactiveCardColour,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                      ),
                    )
                  ],
                )),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style:kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor:  Color(0xff8d8e98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xffeb1555),
                        overlayColor: Color(0x29eb1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue){
                          setState(() {
                            height =  newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                )
              ),
            ),
            Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        colour: kActiveCardColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WEIGHT',
                                style:kLabelTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                              children:<Widget>[
                                RoundIconButton(
                                    icon:FontAwesomeIcons.minus,
                                  onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                  },
                                ),
                               SizedBox(width: 10.0,
                               ),
                                RoundIconButton(
                                  icon:FontAwesomeIcons.plus,
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),

                             ],
                           ),
                           //  ElevatedButton(
                           //    //backgroundColor:Color(0xff4c4f5e),
                           //    child: Icon(Icons.add,
                           //    ),
                           //    onPressed: (){},
                           //    style: ElevatedButton.styleFrom(
                           //      primary: Color(0xff4c4f5e),
                           //    ),
                           // ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        colour: kActiveCardColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                            'AGE',
                                style:kLabelTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(icon: FontAwesomeIcons.minus,
                                    onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                }),
                                SizedBox(width: 10.0,
                                ),
                                RoundIconButton(icon: FontAwesomeIcons.plus,
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            BottomButton(buttonTitle: '結果を見る',onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage(

                  ),
                  ),
              );
            },
            ),
          ],
        ),
      );
    }
  }


