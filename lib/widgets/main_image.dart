import 'package:apex_value/constants/color.dart';
import 'package:apex_value/widgets/device_card.dart';
import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  const MainImage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 500,
      width: screenWidth * 0.45,
      decoration: BoxDecoration(color: CustomColor.scaffoldBgWhite),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                width: screenWidth * 0.225,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/woman.jpg", fit: BoxFit.cover),
                ),
              ),

              Positioned(
                left: 50,
                top: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DeviceCard(
                      imagePath: "assets/smartphone.jpg",
                      label: "Smartphones",
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 30),
                        DeviceCard(
                          imagePath: 'assets/tablet.png',
                          label: 'iPads/Tablets',
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    DeviceCard(
                      imagePath: 'assets/wear.png',
                      label: 'Wearables',
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 30),
                        DeviceCard(
                          imagePath: '',
                          label:
                              'Have something else? Visit us, and we’ll evaluate it for you!',
                          isTextOnly: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
