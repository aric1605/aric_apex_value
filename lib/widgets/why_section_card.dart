import 'package:apex_value/constants/color.dart';
import 'package:apex_value/constants/why_section_utils.dart';
import 'package:flutter/material.dart';

class WhySectionCard extends StatelessWidget {
  const WhySectionCard({super.key, required this.whyutils});
  final WhySectionUtils whyutils;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Container(
        height: 100,
        width: 250,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white.withOpacity(0.5)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.2, 1.4],
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                whyutils.title,
                style: TextStyle(
                  fontFamily: 'CustomFontRegular',
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: CustomColor.fontPurple,
                ),
              ),
              SizedBox(height: 2),
              Text(
                textAlign: TextAlign.center,
                whyutils.subtitle,
                style: TextStyle(
                  fontFamily: 'CustomFontLight',
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: CustomColor.fontPurple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
