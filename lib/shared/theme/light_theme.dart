import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

// Our light/Primary Theme
ThemeData themeData(BuildContext context) {
  return ThemeData(
    appBarTheme: const AppBarTheme(color: Colors.transparent, elevation: 0),
    primaryColor: SKColors.skPrimaryColor,
    accentColor: SKColors.skAccentLightColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
      secondary: SKColors.skSecondaryLightColor,
      // on light theme surface = Colors.white by default
    ),
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: SKColors.skBodyTextColorLight),
    accentIconTheme: const IconThemeData(color: SKColors.skAccentIconLightColor),
    primaryIconTheme: const IconThemeData(color: SKColors.skPrimaryIconLightColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: const TextStyle(color: SKColors.skBodyTextColorLight),
      bodyText2: const TextStyle(color: SKColors.skBodyTextColorLight),
      headline4: const TextStyle(color: SKColors.skTitleTextLightColor, fontSize: 32),
      headline1: const TextStyle(color: SKColors.skTitleTextLightColor, fontSize: 80),
    ),
  );
}
