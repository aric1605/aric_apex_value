import 'package:apex_value/constants/color.dart';
import 'package:apex_value/constants/how_utils.dart';
import 'package:flutter/material.dart';

class HowCard extends StatelessWidget {
  const HowCard({super.key, required this.howutils});
  final HowUtils howutils;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 325,
          width: 315,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(howutils.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 325,
          width: 315,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [CustomColor.scaffoldBgPurple, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.1, 0.5],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 315,
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  howutils.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  howutils.subtitle,
                  style: TextStyle(
                    fontFamily: 'CustomFontRegular',
                    fontSize: 10,
                    color: CustomColor.fontWhite,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
