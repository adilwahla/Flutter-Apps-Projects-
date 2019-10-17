import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import '../constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import '../components/round_icon_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';
enum Gender{
  male,
  female,
}


Gender selectedGender;
int height=180;
int weight=80;
int age =19;

 class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(

        children:<Widget>[
        Expanded(

            child:    Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    Colour:selectedGender==Gender.male?kactiveCardColour:kinactiveCardColour,
                    cardChild: IconContent(icon:FontAwesomeIcons.mars,label:'MALE'),
                    onPress: (){
                      setState(() {
                        selectedGender=Gender.male;
                      });
                    },

                  ),
                ),

                Expanded(
                         child:ReusableCard(
                           Colour:selectedGender==Gender.female?kactiveCardColour:kinactiveCardColour,
                           cardChild:IconContent(icon:FontAwesomeIcons.venus,label:'FEMALE'),
                           onPress: (){
                             setState(() {
                               selectedGender=Gender.female;
                             });
                           },
                ),
                ),
    ],

            ),

    ),
        Expanded(

          child:ReusableCard(Colour:kactiveCardColour,
               cardChild: Column(

                 mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text(
             'Height',
             style: klabelTextStyle,

           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.baseline,
             textBaseline: TextBaseline.alphabetic,
             children: <Widget>[
               Text(height.toString(),
               style:kNumberStyle),
               Text(
                 'cm'
               ),

             ],
           ),
           SliderTheme(
             data: SliderTheme.of(context).copyWith(
               activeTrackColor: Colors.white,
               inactiveTrackColor:  Color(0xFF8D8E98),
               thumbColor: Color(0xFFEB1555),

               overlayColor: Color(0x29EB1555),
               thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
               overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0,),
             ),
             child: Slider(
               value: height.toDouble(),
               min: 120.0,
               max: 220.0,


               onChanged: (double newValue){
                 setState(() {
                   height=newValue.round();
                 });
               },
             ),
           ),
         ],
       ),
          ),

        ),
          Expanded(

            child:  Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(Colour:kactiveCardColour,
                    cardChild: Column(
                      children: <Widget>[
                        Text('Weight',
                          style: klabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: (){
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 7.0,
                            ),
                            RoundIconButton(
                              onPress: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),

                      ],
                    ),

                  ),
                ),
                Expanded(
                  child:ReusableCard(Colour:kactiveCardColour,
                    cardChild:Column(
                      children: <Widget>[
                        Text('Age',
                          style: klabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: (){
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 7.0,
                            ),
                            RoundIconButton(
                              onPress: (){
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),

                ),
              ],
            ),

          ),
 BottomButton(
   ButtonTitle: 'CALCULATE',
   onTap: (){
     CalculatorBrain calc=CalculatorBrain( height: height,weight:weight );

     Navigator.push(
       context,
       MaterialPageRoute(builder: (context) => ResultsPage(
   BmIResult: calc.CalculateBMI(),
         ResultText:calc.getResult() ,
         Interpretation: calc.Interpretation(),
       )),
     );

   },
 ),
     ]
      ),


      );


  }
}




