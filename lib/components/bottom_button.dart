import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key, required this.buttonTitle, required this.onTap});

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: bottomContainerColor,
        ),
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Center(
            child: Text(
          buttonTitle,
          style: largeButtonTextStyle,
        )),
      ),
    );
  }
}
