import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Color Theme
Color primaryColor = const Color(0xff573353);
Color secondaryColor = const Color(0xffFC9D45);
Color thirdColor = const Color(0xffFFF3E9);

// Nunito Font
TextStyle nunito = GoogleFonts.nunito();
TextStyle nunitoTitle = nunito.copyWith(
    color: primaryColor, fontSize: 32, fontWeight: FontWeight.w400);

// Manrope Font
TextStyle manrope = GoogleFonts.manrope();
TextStyle manropeTitle = nunito.copyWith(
    color: primaryColor, fontSize: 17, fontWeight: FontWeight.w700);
