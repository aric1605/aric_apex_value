import 'package:apex_value/constants/color.dart';
import 'package:apex_value/constants/how_utils.dart';
import 'package:apex_value/widgets/how_card.dart';
import 'package:flutter/material.dart';

class HowSection extends StatelessWidget {
  const HowSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      color: CustomColor.scaffoldBgWhite,
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(20, 25, 20, 40),
      child: Column(
        children: <Widget>[
          Text(
            "How Apex Value Works",
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'CustomFontRegular',
              fontWeight: FontWeight.w700,
              color: CustomColor.fontPurple,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            "Vero's intuitive email, push, and SMS editors, along with its visual journey\nbuilder, integrations, and flexible API, let you launch ideas quickly, enhance\ncustomer experiences, achieve your marketing goals and grow faster",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'CustomFontLight',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 30),

          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < how_var.length; i++)
                  HowCard(howutils: how_var[i]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
