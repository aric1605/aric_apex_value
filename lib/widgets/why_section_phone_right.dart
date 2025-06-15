import 'package:apex_value/constants/why_card_items.dart';
import 'package:apex_value/widgets/why_card.dart';
import 'package:flutter/material.dart';

class WhySectionPhoneRight extends StatelessWidget {
  const WhySectionPhoneRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Exclusive Apex Value Perks",
            style: TextStyle(
              fontFamily: 'CustomFontRegular',
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 10),

          for (int i = 0; i < why_card_items.length; i++)
            WhyCard(why_card: why_card_items[i]),
        ],
      ),
    );
  }
}
