import 'package:flutter/material.dart';

class Constant {
  Constant._();

  static double standardPadding = 12.0;

  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static EdgeInsets get kPaddingHorizontalStandard =>
      EdgeInsets.symmetric(horizontal: standardPadding);

  static EdgeInsets get kPaddingVerticalStandard =>
      EdgeInsets.symmetric(vertical: standardPadding);

  static EdgeInsets get kPaddingAllStandard => EdgeInsets.all(standardPadding);
}
