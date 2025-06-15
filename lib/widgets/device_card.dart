import 'package:flutter/material.dart';

class DeviceCard extends StatelessWidget {
  final String imagePath;
  final String label;
  final bool isTextOnly;

  const DeviceCard({
    super.key,
    required this.imagePath,
    required this.label,
    this.isTextOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isTextOnly)
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Image.asset(
                imagePath,
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
            ),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
