import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class TestArrow extends StatelessWidget {
  const TestArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dotted Arrows Between Cards")),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildCard("Card 1"),
              buildDottedArrow(),
              buildCard("Card 2"),
              buildDottedArrow(),
              buildCard("Card 3"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(String title) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Container(
        width: 120,
        height: 100,
        alignment: Alignment.center,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  Widget buildDottedArrow() {
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
