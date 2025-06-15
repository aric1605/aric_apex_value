import 'package:apex_value/constants/color.dart';
import 'package:flutter/material.dart';

class LocateUsButton extends StatelessWidget {
  const LocateUsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColor.fontPurple,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.fromLTRB(40, 18, 0, 18),
      ),
      child: SizedBox(
        width: 150,
        child: Row(
          children: [
            Text(
              'Locate Store',
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 16,
                fontFamily: 'CustomFontRegular',
              ),
            ),
            SizedBox(width: 5),
            Image.asset("assets/pin.png", width: 20),
          ],
        ),
      ),
    );
  }
}
