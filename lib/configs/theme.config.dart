import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.poppinsTextTheme(
      Theme.of(context).textTheme,
    ),
  );
}
