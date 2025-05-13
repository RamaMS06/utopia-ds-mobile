import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utopia_design_system/utopia_design_system.dart';

/// A custom text style class for subheadings.
///
/// This class extends [TextStyle] and provides predefined text styles
/// for different heading levels (h5, h6, h7, h8) with specific font sizes,
/// weights, colors, and line heights.
class TextSubHeading extends TextStyle {
  /// Creates a [TextSubHeading] with a default font size of 20, bold weight,
  /// black color, and a line height of 24.
  TextSubHeading()
      : super(
          fontSize: 16.sp,
          color: UTColor.text.dark,
          height: 20.sp.toFigmaLineHeight(16.sp),
          fontFamily: GoogleFonts.manrope(
            fontWeight: FontWeight.bold,
          ).fontFamily,
        );

  /// Text style for heading level 5 with a font size of 16, bold weight,
  /// and a line height adjusted for Figma.
  final TextStyle h5 = GoogleFonts.manrope(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: UTColor.text.dark,
    height: 20.sp.toFigmaLineHeight(16.sp),
  );

  /// Text style for heading level 6 with a font size of 14, semi-bold weight,
  /// and a line height adjusted for Figma.
  final TextStyle h6 = GoogleFonts.manrope(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: UTColor.text.dark,
    height: 16.sp.toFigmaLineHeight(14.sp),
  );

  /// Text style for heading level 7 with a font size of 12, bold weight,
  /// and a line height adjusted for Figma.
  final TextStyle h7 = GoogleFonts.manrope(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: UTColor.text.dark,
    height: 16.sp.toFigmaLineHeight(12.sp),
  );
}
