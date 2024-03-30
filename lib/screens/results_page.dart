import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI CALCULATOR",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Your Result",
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Normal",
                    style: resultTextStyle,
                  ),
                  Text(
                    "18.3",
                    style: bmiTextStyle,
                  ),
                  Text(
                    "Your BMI result is quite low, you should eat more!",
                    style: bodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(
            buttonTitle: "RECALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
