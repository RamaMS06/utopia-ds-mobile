import 'dart:math';

import 'package:flutter/material.dart';

import 'screen_responsive.dart';

extension UTSizeExtension on num {
  ///[UTScreenResponsive.setWidth]
  double get w => UTScreenResponsive().setWidth(this);

  ///[UTScreenResponsive.setHeight]
  double get h => UTScreenResponsive().setHeight(this);

  ///[UTScreenResponsive.radius]
  double get r => UTScreenResponsive().radius(this);

  ///[UTScreenResponsive.diagonal]
  double get dg => UTScreenResponsive().diagonal(this);

  ///[UTScreenResponsive.diameter]
  double get dm => UTScreenResponsive().diameter(this);

  ///[UTScreenResponsive.setSp]
  double get sp => UTScreenResponsive().setSp(this);

  ///smart size :  it check your value - if it is bigger than your value it will set your value
  ///for example, you have set 16.sm() , if for your screen 16.sp() is bigger than 16 , then it will set 16 not 16.sp()
  ///I think that it is good for save size balance on big sizes of screen
  double get spMin => min(toDouble(), sp);

  @Deprecated('use spMin instead')
  double get sm => min(toDouble(), sp);

  double get spMax => max(toDouble(), sp);

  ///屏幕宽度的倍数
  ///Multiple of screen width
  double get sw => UTScreenResponsive().screenWidth * this;

  ///屏幕高度的倍数
  ///Multiple of screen height
  double get sh => UTScreenResponsive().screenHeight * this;

  ///[UTScreenResponsive.setHeight]
  SizedBox get verticalSpace => UTScreenResponsive().setVerticalSpacing(this);

  ///[UTScreenResponsive.setVerticalSpacingFromWidth]
  SizedBox get verticalSpaceFromWidth =>
      UTScreenResponsive().setVerticalSpacingFromWidth(this);

  ///[UTScreenResponsive.setWidth]
  SizedBox get horizontalSpace => UTScreenResponsive().setHorizontalSpacing(this);

  ///[UTScreenResponsive.radius]
  SizedBox get horizontalSpaceRadius =>
      UTScreenResponsive().setHorizontalSpacingRadius(this);

  ///[UTScreenResponsive.radius]
  SizedBox get verticalSpacingRadius =>
      UTScreenResponsive().setVerticalSpacingRadius(this);

  ///[UTScreenResponsive.diameter]
  SizedBox get horizontalSpaceDiameter =>
      UTScreenResponsive().setHorizontalSpacingDiameter(this);

  ///[UTScreenResponsive.diameter]
  SizedBox get verticalSpacingDiameter =>
      UTScreenResponsive().setVerticalSpacingDiameter(this);

  ///[UTScreenResponsive.diagonal]
  SizedBox get horizontalSpaceDiagonal =>
      UTScreenResponsive().setHorizontalSpacingDiagonal(this);

  ///[UTScreenResponsive.diagonal]
  SizedBox get verticalSpacingDiagonal =>
      UTScreenResponsive().setVerticalSpacingDiagonal(this);
}

extension EdgeInsetsExtension on EdgeInsets {
  /// Creates adapt insets using r [UTSizeExtension].
  EdgeInsets get r => copyWith(
        top: top.r,
        bottom: bottom.r,
        right: right.r,
        left: left.r,
      );

  EdgeInsets get dm => copyWith(
        top: top.dm,
        bottom: bottom.dm,
        right: right.dm,
        left: left.dm,
      );

  EdgeInsets get dg => copyWith(
        top: top.dg,
        bottom: bottom.dg,
        right: right.dg,
        left: left.dg,
      );

  EdgeInsets get w => copyWith(
        top: top.w,
        bottom: bottom.w,
        right: right.w,
        left: left.w,
      );

  EdgeInsets get h => copyWith(
        top: top.h,
        bottom: bottom.h,
        right: right.h,
        left: left.h,
      );
}

extension BorderRadiusExtension on BorderRadius {
  /// Creates adapt BorderRadius using r [UTSizeExtension].
  BorderRadius get r => copyWith(
        bottomLeft: bottomLeft.r,
        bottomRight: bottomRight.r,
        topLeft: topLeft.r,
        topRight: topRight.r,
      );

  BorderRadius get w => copyWith(
        bottomLeft: bottomLeft.w,
        bottomRight: bottomRight.w,
        topLeft: topLeft.w,
        topRight: topRight.w,
      );

  BorderRadius get h => copyWith(
        bottomLeft: bottomLeft.h,
        bottomRight: bottomRight.h,
        topLeft: topLeft.h,
        topRight: topRight.h,
      );
}

extension RadiusExtension on Radius {
  /// Creates adapt Radius using r [UTSizeExtension].
  Radius get r => Radius.elliptical(x.r, y.r);

  Radius get dm => Radius.elliptical(x.dm, y.dm);

  Radius get dg => Radius.elliptical(x.dg, y.dg);

  Radius get w => Radius.elliptical(x.w, y.w);

  Radius get h => Radius.elliptical(x.h, y.h);
}

extension BoxConstraintsExtension on BoxConstraints {
  /// Creates adapt BoxConstraints using r [UTSizeExtension].
  BoxConstraints get r => copyWith(
        maxHeight: maxHeight.r,
        maxWidth: maxWidth.r,
        minHeight: minHeight.r,
        minWidth: minWidth.r,
      );

  /// Creates adapt BoxConstraints using h-w [UTSizeExtension].
  BoxConstraints get hw => copyWith(
        maxHeight: maxHeight.h,
        maxWidth: maxWidth.w,
        minHeight: minHeight.h,
        minWidth: minWidth.w,
      );

  BoxConstraints get w => copyWith(
        maxHeight: maxHeight.w,
        maxWidth: maxWidth.w,
        minHeight: minHeight.w,
        minWidth: minWidth.w,
      );

  BoxConstraints get h => copyWith(
        maxHeight: maxHeight.h,
        maxWidth: maxWidth.h,
        minHeight: minHeight.h,
        minWidth: minWidth.h,
      );
}
