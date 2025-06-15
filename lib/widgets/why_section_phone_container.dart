import 'package:apex_value/constants/color.dart';
import 'package:apex_value/widgets/why_section_phone_right.dart';
import 'package:flutter/material.dart';

class WhySectionPhoneContainer extends StatelessWidget {
  const WhySectionPhoneContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 600,
      decoration: BoxDecoration(
        color: CustomColor.scaffoldBgWhite,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 190,
              width: 210,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/why_phone.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),

          WhySectionPhoneRight(),
        ],
      ),
    );
  }
}
