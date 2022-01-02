import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ReusableCard.dart';
import 'cardColumn.dart';

const bottomContainerHeight = 60.0;
const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerMargin = EdgeInsets.only(top: 10.0);

const activeCardColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF0A0E21);

Color maleCardColor = activeCardColor;
Color femaleCardColor = inactiveCardColor;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableContainer(
                        colour: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                        cardChild: cardColumn(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReusableContainer(
                        colour: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                        cardChild: cardColumn(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child: ReusableContainer(colour: activeCardColor),
            // ),
            // Expanded(
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: ReusableContainer(colour: activeCardColor),
            //       ),
            //       Expanded(
            //         child: ReusableContainer(colour: activeCardColor),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              color: bottomContainerColor,
              margin: bottomContainerMargin,
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}
