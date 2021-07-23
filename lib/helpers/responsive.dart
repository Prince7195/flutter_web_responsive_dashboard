import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int custoScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  final Widget large;
  final Widget? medium;
  final Widget? small;

  const ResponsiveWidget({
    required this.large,
    this.medium,
    this.small,
  });

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < smallScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  static bool isCustomScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < custoScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double _width = constraints.maxWidth;
        if (_width > largeScreenSize) {
          return large;
        } else if (_width < largeScreenSize && _width >= mediumScreenSize) {
          return medium ?? large;
        } else {
          return small ?? large;
        }
      },
    );
  }
}
