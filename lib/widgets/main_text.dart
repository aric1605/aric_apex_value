import 'package:apex_value/widgets/get_started_button.dart';
import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  const MainText({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double headingSize = 57;
    double bodySize = 24;
    double buttonHorizontal = 28;
    double buttonVertical = 14;

    if (screenWidth < 1000) {
      headingSize = 44;
    }
    if (screenWidth < 800) {
      headingSize = 36;
      bodySize = 20;
      buttonHorizontal = 24;
      buttonVertical = 12;
    }
    if (screenWidth < 600) {
      headingSize = 28;
      bodySize = 16;
      buttonHorizontal = 20;
      buttonVertical = 10;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Upgrade Your World",
          style: TextStyle(
            fontSize: headingSize,
            fontFamily: 'CustomFontLight',
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "with ",
                style: TextStyle(
                  fontSize: headingSize,
                  fontFamily: 'CustomFontLight',
                ),
              ),
              TextSpan(
                text: "Apex Value",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: headingSize,
                  fontFamily: 'CustomFont',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Text(
          "Say goodbye to old devices and hello to cutting-edge\ntechnology. At Apex Value, we make it simple for you\nto trade in your old device and trade up to something\nnew—all in one convenient place.",
          style: TextStyle(fontSize: bodySize, height: 1.4),
        ),
        const SizedBox(height: 20),
        GetStartedButton(
          horizontal: buttonHorizontal,
          vertical: buttonVertical,
        ),
      ],
    );
  }
}
