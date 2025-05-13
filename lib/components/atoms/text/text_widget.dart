import 'package:flutter/material.dart';
import 'package:utopia_design_system/utopia_design_system.dart';

/// A custom label for displaying text.
///
/// The [text] parameter must not be null.
///
/// For example:
/// ```dart
/// const UIText(
///   'Text Label',
///   style: UTLabelStyle.body,
///   color: UTColor.text.dark,
///   maxLines: 4,
///   textAlign: TextAlign.start,
///   overflow: TextOverflow.ellipsis,
///   onTap: (){
///     // Do something
///   }
/// )
/// ```
class UTText extends StatelessWidget {
  /// Creating label with default text for displaying to UI.
  ///
  /// Make the [FontStyle] to `Poppins`.
  const UTText(
    this.text, {
    this.style,
    this.color,
    this.maxLines,
    this.textAlign,
    this.overflow,
    this.isAsterisk,
    this.onTap,
    super.key,
  });

  /// Display label of text.
  final String text;

  /// Custom type of style [TextStyle] with enumeration.
  final UTLabelStyle? style;

  /// Specify the color of the text.
  final Color? color;

  /// A maximum lines for displaying label.
  final int? maxLines;

  /// A setting for text align.
  final TextAlign? textAlign;

  /// Displaying overflow text to handle multiple text.
  final TextOverflow? overflow;

  /// A setting for asterisk.
  final bool? isAsterisk;

  /// Callback from pressing the label.
  final VoidCallback? onTap;

  /// Creating anonymous function mapping style to enum style.
  TextStyle get _style => () {
        return switch (style ?? UTLabelStyle.body) {
          UTLabelStyle.headingH1 => UTFont.heading.h1,
          UTLabelStyle.headingH2 => UTFont.heading.h2,
          UTLabelStyle.headingH3 => UTFont.heading.h3,
          UTLabelStyle.headingH4 => UTFont.heading.h4,
          UTLabelStyle.headingH5 => UTFont.subheading.h5,
          UTLabelStyle.headingH6 => UTFont.subheading.h6,
          UTLabelStyle.headingH7 => UTFont.subheading.h7,
          UTLabelStyle.headingH7Capital => UTFont.subheading.h7,
          UTLabelStyle.headingH8 => UTFont.subheading.h7,
          UTLabelStyle.body => UTFont.body,
          UTLabelStyle.bodySmall => UTFont.body.small,
          UTLabelStyle.bodyXstraSmall => UTFont.body.xstraSmall,
          UTLabelStyle.bodyBold => UTFont.body.bold,
          UTLabelStyle.bodyItalic => UTFont.body.italic,
          UTLabelStyle.bodyUnderline => UTFont.body.underline,
          UTLabelStyle.bodyParagraph => UTFont.body.paragraph,
          UTLabelStyle.bodyParagraphIndent => UTFont.body.paragraph,
        };
      }();

  /// A default text for displaying label.
  String get defaultText => () {
        return switch (style) {
          UTLabelStyle.headingH7Capital => text.toUpperCase(),
          UTLabelStyle.bodyParagraphIndent => '    $text',
          _ => text,
        };
      }();

  @override
  Widget build(BuildContext context) {
    return isAsterisk ?? false
        ? RichText(
            textAlign: textAlign ?? TextAlign.start,
            overflow: overflow ?? TextOverflow.ellipsis,
            maxLines: maxLines,
            text: TextSpan(
              text: defaultText,
              style: _style.copyWith(
                color: color ?? UTColor.text.dark,
              ),
              children: [
                TextSpan(
                  text: ' *',
                  style: _style.copyWith(
                    color: UTColor.text.danger,
                  ),
                ),
              ],
            ),
          )
        : Text(
            defaultText,
            overflow: overflow,
            textAlign: textAlign,
            style: _style.copyWith(
              color: color ?? UTColor.text.dark,
            ),
            maxLines: maxLines,
          );
  }
}
