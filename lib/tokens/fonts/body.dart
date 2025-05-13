// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utopia_design_system/utopia_design_system.dart';

/// A custom text style class for body text in the design system.
///
/// This class extends [TextStyle] and provides various predefined text styles
/// for different use cases such as bold, small, extra small, italic, underline,
/// and paragraph text styles.
class TextBody extends TextStyle implements GoogleFonts {
  /// Creates a default body text style with a font size of 14.sp, medium weight,
  /// dark text color, and a line height of 16.sp.
  TextBody()
      : super(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: UTColor.text.dark,
          height: 16.sp.toFigmaLineHeight(14.sp),
          fontFamily: GoogleFonts.manrope().fontFamily,
        );

  /// A bold text style with a font size of 14.sp, bold weight, dark text color,
  /// and a line height of 16.sp.
  final TextStyle bold = GoogleFonts.manrope(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: UTColor.text.dark,
    height: 16.sp.toFigmaLineHeight(14.sp),
  );

  /// A small text style with a font size of 11.sp, medium weight, dark text color,
  /// and a line height of 16.sp.
  final TextStyle small = GoogleFonts.manrope(
    fontSize: 11.sp,
    fontWeight: FontWeight.w500,
    color: UTColor.text.dark,
    height: 16.sp.toFigmaLineHeight(11.sp),
  );

  /// An extra small text style with a font size of 8.sp, medium weight, dark text color,
  /// and a line height of 14.sp.
  final TextStyle xstraSmall = GoogleFonts.manrope(
    fontSize: 8.sp,
    fontWeight: FontWeight.w500,
    color: UTColor.text.dark,
    height: 14.sp.toFigmaLineHeight(8.sp),
  );

  /// An italic text style with a font size of 14.sp, medium weight, dark text color,
  /// italic font style, and a line height of 16.sp.
  final TextStyle italic = GoogleFonts.manrope(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: UTColor.text.dark,
    fontStyle: FontStyle.italic,
    height: 16.sp.toFigmaLineHeight(14.sp),
  );

  /// An underline text style with a font size of 14.sp, medium weight, dark text color,
  /// underline decoration, and a line height of 16.sp.
  final TextStyle underline = GoogleFonts.manrope(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: UTColor.text.dark,
    decoration: TextDecoration.underline,
    height: 16.sp.toFigmaLineHeight(14.sp),
  );

  /// A paragraph text style with a font size of 14.sp, medium weight, dark text color,
  /// and a line height of 24.sp.
  final TextStyle paragraph = GoogleFonts.manrope(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: UTColor.text.dark,
    height: 24.sp.toFigmaLineHeight(14.sp),
  );
}
