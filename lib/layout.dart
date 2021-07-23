import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helpers/responsive.dart';
import 'package:responsive_dashboard/widgets/large_screen.dart';
import 'package:responsive_dashboard/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ResponsiveWidget(
        large: LargeScreen(),
        small: SmallScreen(),
      ),
    );
  }
}
