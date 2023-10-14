import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_apps/styles/colors.dart';

class CustomTypography {
  CustomTypography._();

  static TextStyle kDisplayMedium = GoogleFonts.poppins(
    color: MyColors.kBlack,
    fontSize: 45,
    fontWeight: FontWeight.w400,
  );

  static TextStyle kDisplaySmall = GoogleFonts.poppins(
    color: MyColors.kBlack,
    fontSize: 36,
    fontWeight: FontWeight.w400,
  );

  static TextStyle kHeadlineMedium = GoogleFonts.poppins(
    color: MyColors.kBlack,
    fontSize: 28,
    fontWeight: FontWeight.w400,
  );

  static TextStyle kHeadlineSmall = GoogleFonts.poppins(
    color: MyColors.kBlack,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static TextStyle kTitleMedium = GoogleFonts.poppins(
    color: MyColors.kBlack,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: .15,
  );

  static TextStyle kTitleSmall = GoogleFonts.poppins(
    color: MyColors.kBlack,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: .1,
  );

  static TextStyle kBodyMedium = GoogleFonts.poppins(
    color: MyColors.kBlack,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: .25,
  );

  static TextStyle kBodySmall = GoogleFonts.poppins(
    color: MyColors.kBlack,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: .4,
  );
}
