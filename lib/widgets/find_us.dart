import 'package:apex_value/constants/color.dart';
import 'package:apex_value/widgets/locate_us_button.dart';
import 'package:flutter/material.dart';

class FindUs extends StatelessWidget {
  const FindUs({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: screenWidth,
        color: CustomColor.scaffoldBgWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Find Apex Value Near You",
              style: TextStyle(fontSize: 25, fontFamily: 'CustomFontBold'),
            ),
            SizedBox(height: 10),
            Text(
              "Ready to start your upgrade?\nFind your nearest Apex Value store and transform\nyour tech today",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'CustomFontRegular',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            LocateUsButton(),
          ],
        ),
      ),
    );
  }
}
