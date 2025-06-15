import 'package:apex_value/constants/color.dart';
import 'package:apex_value/constants/nav_items.dart';
import 'package:apex_value/widgets/get_started_button.dart';
import 'package:flutter/material.dart';

class Drawer extends StatelessWidget {
  const Drawer({super.key, required backgroundColor, required ListView child});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBgWhite,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        children: [
          for (var title in navTitles)
            ListTile(
              title: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'CustomFontRegular',
                  color: CustomColor.fontPurple,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          const SizedBox(height: 20),
          GetStartedButton(horizontal: 20, vertical: 14),
        ],
      ),
    );
  }
}
