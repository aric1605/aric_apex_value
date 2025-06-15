import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class Arrow extends StatelessWidget {
  const Arrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DottedLine(
          dashColor: Colors.grey,
          dashLength: 4,
          lineLength: 40,
          lineThickness: 2,
        ),
        Icon(Icons.arrow_forward, size: 20, color: Colors.grey),
      ],
    );
  }
}
