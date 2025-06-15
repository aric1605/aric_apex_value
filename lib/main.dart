import 'package:apex_value/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ApexValue());
}

class ApexValue extends StatelessWidget {
  const ApexValue({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      title: "Apex Value",
    );
  }
}
