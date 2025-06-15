import 'package:apex_value/constants/color.dart';
import 'package:apex_value/widgets/main_image.dart';
import 'package:apex_value/widgets/main_text.dart';
import 'package:flutter/material.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    bool isMobile = false;
    EdgeInsetsGeometry padding = const EdgeInsets.fromLTRB(70, 16, 70, 16);

    if (screenWidth < 800) {
      isMobile = true;
      padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 16);
    }

    return Padding(
      padding: padding,
      child: Container(
        width: double.infinity,
        color: CustomColor.scaffoldBgWhite,
        child: AnimatedCrossFade(
          duration: const Duration(milliseconds: 400),
          crossFadeState: isMobile
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          firstChild: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [MainText(), SizedBox(height: 30), MainImage()],
          ),
          secondChild: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(child: MainText()),
              SizedBox(width: 30),
              Expanded(child: MainImage()),
            ],
          ),
        ),
      ),
    );
  }
}
