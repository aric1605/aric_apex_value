import 'package:flutter/material.dart';
import 'package:apex_value/constants/color.dart';
import 'package:apex_value/widgets/lifecycle_section.dart';
import 'package:apex_value/widgets/nav_bar.dart';
import 'package:apex_value/widgets/main_section.dart';
import 'package:apex_value/widgets/quote_section.dart';
import 'package:apex_value/widgets/how_section.dart';
import 'package:apex_value/widgets/why_section.dart';
import 'package:apex_value/widgets/find_us.dart';
import 'package:apex_value/widgets/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.of(context).size;
    // final screenWidth = screenSize.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: _scaffoldKey,
          backgroundColor: CustomColor.scaffoldBgWhite,

          endDrawer: Drawer(backgroundColor: CustomColor.scaffoldBgWhite),

          body: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                NavBar(scaffoldKey: _scaffoldKey),

                MainSection(),

                QuoteSection(),

                HowSection(),

                WhySection(),

                LifecycleSection(),

                FindUs(),

                Footer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
