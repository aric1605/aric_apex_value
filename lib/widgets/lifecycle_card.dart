import 'package:flutter/material.dart';
import 'package:apex_value/constants/color.dart';
import 'package:apex_value/constants/lifecycle_utils.dart';

class LifecycleCard extends StatelessWidget {
  const LifecycleCard({super.key, required this.lifecycleUtils});
  final LifecycleUtils lifecycleUtils;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              color: CustomColor.scaffoldBgPurple,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(lifecycleUtils.image, fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            lifecycleUtils.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13,
              fontFamily: 'CustomFontRegular',
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            lifecycleUtils.subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'CustomFontRegular',
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
