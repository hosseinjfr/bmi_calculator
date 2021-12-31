import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: ReusableContainer(colour: Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child: ReusableContainer(colour: Color(0xFF1D1E33)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableContainer(colour: Color(0xFF1D1E33)),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContainer(colour: Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child: ReusableContainer(colour: Color(0xFF1D1E33)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class ReusableContainer extends StatelessWidget {

  ReusableContainer({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
