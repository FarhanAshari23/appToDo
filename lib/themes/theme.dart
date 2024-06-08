import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  dividerTheme: const DividerThemeData(color: Colors.transparent),
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Color(0xffFFC5C5),
    primary: Color(0xffFFEBD8),
    secondary: Color(0xffC7DCA7),
    inversePrimary: Color(0xff89B9AD),
  ),
);

ThemeData darkmode = ThemeData(
  dividerTheme: const DividerThemeData(color: Colors.transparent),
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color(0xff222831),
    primary: Color(0xff31363F),
    secondary: Color(0xff76ABAE),
    inversePrimary: Color(0xffEEEEEE),
  ),
);
