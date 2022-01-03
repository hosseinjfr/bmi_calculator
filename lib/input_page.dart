import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusable_card.dart';
import 'card_column.dart';

Color maleCardColor = KActiveCardColor;
Color femaleCardColor = KInactiveCardColor;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  int height = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        colour: selectedGender == Gender.male
                            ? KActiveCardColor
                            : KInactiveCardColor,
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
                        colour: selectedGender == Gender.female
                            ? KActiveCardColor
                            : KInactiveCardColor,
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
            Expanded(
              child: ReusableContainer(
                  colour: KInactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: KLabelStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kNumberStyle,
                          ),
                          Text(
                            'cm',
                            style: KLabelStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: const Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          thumbColor: const Color(0xFFEB1555),
                          overlayColor: const Color(0x29EB1555),
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 15.0,
                          ),
                          overlayShape:
                              const RoundSliderThumbShape(enabledThumbRadius: 30.0),
                        ),
                        child: Slider(
                          min: 100,
                          max: 220,
                          label: height.round().toString(),
                          value: height.toDouble(),
                          onChanged: (double value) {
                            setState(() {
                              height = value.toInt();
                            });
                          },
                        ),
                      )
                    ],
                  )),
            ),
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
