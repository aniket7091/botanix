import 'package:flutter/material.dart';

class Responsive {
  // Breakpoints
  static const double mobile = 600;
  static const double tablet = 1024;

  // Device checks
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobile;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= mobile &&
      MediaQuery.of(context).size.width < tablet;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= tablet;

  // Full screen width/height
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  // Percentage width/height (MOST USEFUL)
  static double width(BuildContext context, double percent) =>
      MediaQuery.of(context).size.width * (percent / 100);

  static double height(BuildContext context, double percent) =>
      MediaQuery.of(context).size.height * (percent / 100);

  // Responsive font size
  static double fontSize(BuildContext context, double size) {
    double w = screenWidth(context);

    if (w < mobile) {
      return size;
    } else if (w < tablet) {
      return size * 1.2;
    } else {
      return size * 1.4;
    }
  }

  // Responsive padding
  static EdgeInsets padding(
    BuildContext context, {
    double mobilePadding = 16,
    double tabletPadding = 24,
    double desktopPadding = 32,
  }) {
    if (isMobile(context)) {
      return EdgeInsets.all(mobilePadding);
    } else if (isTablet(context)) {
      return EdgeInsets.all(tabletPadding);
    } else {
      return EdgeInsets.all(desktopPadding);
    }
  }
}
