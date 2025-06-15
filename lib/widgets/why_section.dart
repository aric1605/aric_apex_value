import 'package:apex_value/constants/color.dart';
import 'package:apex_value/constants/why_section_utils.dart';
import 'package:apex_value/widgets/why_section_card.dart';
import 'package:apex_value/widgets/why_section_phone_container.dart';
import 'package:flutter/material.dart';

class WhySection extends StatelessWidget {
  const WhySection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Stack(
      children: [
        Container(
          color: CustomColor.scaffoldBgPurple,
          width: screenWidth,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(60, 40, 60, 80),
            child: Column(
              children: <Widget>[
                Text(
                  "Why Choose Apex Value?",
                  style: TextStyle(
                    fontFamily: 'CustomColorRegular',
                    fontSize: 30,
                    color: CustomColor.fontYellow,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(height: 20),

                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 600),
                  child: Wrap(
                    children: [
                      for (int i = 0; i < why_section_util_var.length; i++)
                        WhySectionCard(whyutils: why_section_util_var[i]),
                    ],
                  ),
                ),

                SizedBox(height: 25),

                WhySectionPhoneContainer(),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
            width: screenWidth,
            height: 400,
            child: Image.asset("assets/globe.png", fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
