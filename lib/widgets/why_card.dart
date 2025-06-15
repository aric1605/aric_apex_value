import 'package:apex_value/constants/why_card_items.dart';
import 'package:flutter/material.dart';

class WhyCard extends StatelessWidget {
  const WhyCard({super.key, required this.why_card});
  final WhyCardItems why_card;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Image.asset(why_card.image, width: 30),
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                why_card.title,
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'CustomFontLight',
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                why_card.subtitle,
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'CustomFontRegular',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
