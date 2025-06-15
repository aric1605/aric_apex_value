import 'package:apex_value/constants/color.dart';
import 'package:apex_value/constants/lifecycle_utils.dart';
import 'package:apex_value/widgets/lifecycle_card.dart';
import 'package:flutter/material.dart';

class LifecycleSection extends StatelessWidget {
  const LifecycleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      width: screenWidth,
      color: CustomColor.scaffoldBgOffWhite,
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Text(
            'Apex Value Trade In Lifecycle',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'CustomFontBold',
              color: CustomColor.fontPurple,
            ),
          ),
          const SizedBox(height: 100),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Column(
              children: [
                // Top Row: First 5 cards
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 0; i < 5 && i < lifecycleUtilsVar.length; i++)
                      LifecycleCard(lifecycleUtils: lifecycleUtilsVar[i]),
                  ],
                ),
                const SizedBox(height: 80),

                // Bottom Row: Remaining cards
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 5; i < lifecycleUtilsVar.length; i++)
                      LifecycleCard(lifecycleUtils: lifecycleUtilsVar[i]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:apex_value/constants/color.dart';
// import 'package:apex_value/constants/lifecycle_utils.dart';
// import 'package:apex_value/widgets/lifecycle_card.dart';
// import 'package:flutter/material.dart';
// import 'package:apex_value/widgets/arrow.dart'; // Make sure Arrow is a standalone widget

// class LifecycleSection extends StatelessWidget {
//   const LifecycleSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;

//     return Container(
//       width: screenWidth,
//       color: CustomColor.scaffoldBgOffWhite,
//       padding: const EdgeInsets.all(25),
//       child: Column(
//         children: [
//           Text(
//             'Apex Value Trade In Lifecycle',
//             style: TextStyle(
//               fontSize: 24,
//               fontFamily: 'CustomFontBold',
//               color: CustomColor.fontPurple,
//             ),
//           ),
//           const SizedBox(height: 100),

//           ConstrainedBox(
//             constraints: const BoxConstraints(maxWidth: 1000),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 for (int i = 0; i < 5 && i < lifecycleUtilsVar.length; i++) ...[
//                   LifecycleCard(lifecycleUtils: lifecycleUtilsVar[i]),
//                   if (i != 4 && i != lifecycleUtilsVar.length - 1)
//                     const Arrow(),
//                 ],
//               ],
//             ),
//           ),

//           const SizedBox(height: 80),

//           if (lifecycleUtilsVar.length > 5)
//             ConstrainedBox(
//               constraints: const BoxConstraints(maxWidth: 1000),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   for (int i = 5; i < lifecycleUtilsVar.length; i++) ...[
//                     LifecycleCard(lifecycleUtils: lifecycleUtilsVar[i]),
//                     if (i != lifecycleUtilsVar.length - 1) const Arrow(),
//                   ],
//                 ],
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
