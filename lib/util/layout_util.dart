import 'package:flutter/material.dart';

class LayoutUtil {
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width > 600;

  static double resizeContent(double value, BuildContext context,
          {double increment = 1}) =>
      isTablet(context) ? value * increment * 1.6 : value * increment;
}
