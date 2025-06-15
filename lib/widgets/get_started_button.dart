import 'package:apex_value/constants/color.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
    required this.horizontal,
    required this.vertical,
  });
  final double horizontal;
  final double vertical;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColor.fontPurple,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
      ),
      child: const Text(
        'Get Started',
        style: TextStyle(
          color: Colors.white, // Text color
          fontSize: 16,
          fontFamily: 'CustomFontRegular',
        ),
      ),
    );
  }
}
