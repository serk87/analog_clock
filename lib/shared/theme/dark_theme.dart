import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: SKColors.skPrimaryColor,
    accentColor: SKColors.skAccentDarkColor,
    scaffoldBackgroundColor: Color(0xFF0D0C0E),
    appBarTheme: const AppBarTheme(color: Colors.transparent, elevation: 0),
    colorScheme: const ColorScheme.light(
      secondary: SKColors.skSecondaryDarkColor,
      surface: SKColors.skSurfaceDarkColor,
    ),
    backgroundColor: SKColors.skBackgroundDarkColor,
    iconTheme: const IconThemeData(color: SKColors.skBodyTextColorDark),
    accentIconTheme: const IconThemeData(color: SKColors.skAccentIconDarkColor),
    primaryIconTheme: const IconThemeData(color: SKColors.skPrimaryIconDarkColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: const TextStyle(color: SKColors.skBodyTextColorDark),
      bodyText2: const TextStyle(color: SKColors.skBodyTextColorDark),
      headline4: const TextStyle(color: SKColors.skTitleTextDarkColor, fontSize: 32),
      headline1: const TextStyle(color: SKColors.skTitleTextDarkColor, fontSize: 80),
    ),
  );
}
