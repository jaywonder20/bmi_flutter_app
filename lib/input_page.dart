import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';

enum Gender { male, female }
int myHeight = 180;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                  child: new ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kactiveCardColour
                        : kinactiveCardColour,
                    cardChild: IconColumnWidget(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: new ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kactiveCardColour
                        : kinactiveCardColour,
                    cardChild: IconColumnWidget(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: new ReusableCard(
              colour: kactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Height",
                    style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        myHeight.toString(),
                        style: kNumbertextStyle,
                      ),
                      Text("cm")
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      overlayColor: Color(0xFFEB1555),
                      thumbColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      activeTrackColor: Color(0xFFFEEB1555),
                      inactiveTrackColor: Color(0xFFF8DBE98),
                    ),
                    child: Slider(
                      value: myHeight.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newValue) {
                        print(newValue);

                        setState(() {
                          myHeight = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new ReusableCard(
                    colour: kactiveCardColour,
                  ),
                ),
                Expanded(
                  child: new ReusableCard(
                    colour: kactiveCardColour,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: kbottomContainerColour,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kbottomContainerHeight,
          )
        ],
      ),
    );
  }
}
