import 'package:apex_value/constants/color.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      width: screenWidth,

      decoration: BoxDecoration(
        color: CustomColor.scaffoldBgPurple,
        // borderRadius: BorderRadius.only(
        //   bottomLeft: Radius.circular(20),
        //   bottomRight: Radius.circular(20),
        // ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22),
        child: Text(
          "© 2024 Copyright Apex Value. All Rights Reserved",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'CustomFontRegular',
            fontSize: 15,
            color: CustomColor.fontWhite,
          ),
        ),
      ),
    );
  }
}
