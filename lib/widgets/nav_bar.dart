import 'package:apex_value/constants/color.dart';
import 'package:apex_value/constants/nav_items.dart';
import 'package:apex_value/widgets/get_started_button.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const NavBar({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 120,
      width: double.infinity,
      color: CustomColor.scaffoldBgWhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Image.asset("assets/logo.png", height: 70, width: 70),
            ),
            const Spacer(),
            if (screenWidth >= 1000) ...[
              for (int i = 0; i < navTitles.length; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: TextButton(
                    onPressed: () {
                      // Add navigation logic here
                    },
                    child: Text(
                      navTitles[i],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'CustomFontRegular',
                        color: CustomColor.fontPurple,
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: GetStartedButton(horizontal: 20, vertical: 12),
              ),
            ] else ...[
              IconButton(
                icon: Icon(Icons.menu, color: CustomColor.fontPurple),
                onPressed: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}
