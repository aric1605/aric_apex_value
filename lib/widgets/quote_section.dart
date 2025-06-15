import 'package:apex_value/constants/color.dart';
import 'package:flutter/material.dart';

class QuoteSection extends StatelessWidget {
  const QuoteSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: CustomColor.scaffoldBgPurple, // Dark purple background
      width: screenWidth,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset("assets/quote_logo.png", height: 48),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Start Your Trade-In Journey Toda\nAt Apex Value, we’re redefining the upgrade\nexperience. Bring your old device, discover your\ntrade-in value, and step into the future of technology\n—all in one place.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'CustomFontRegular',
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
