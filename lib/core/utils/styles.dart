import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FigmaColors {
  const FigmaColors();

  static const Color gray50 = Color(0xfffafafa);
  static const Color gray100 = Color(0xfff5f5f5);
  static const Color gray200 = Color(0xffe8e8e8);
  static const Color gray300 = Color(0xffd6d6d6);
  static const Color gray400 = Color(0xffb8b8b8);
  static const Color gray500 = Color(0xffa6a6a6);
  static const Color gray600 = Color(0xff7a7a7a);
  static const Color gray700 = Color(0xff454545);
  static const Color gray800 = Color(0xff292929);
  static const Color gray900 = Color(0xff121212);
  static const Color primary50 = Color(0xfff9fdf9);
  static const Color primary100 = Color(0xffdef8df);
  static const Color primary200 = Color(0xffbcefc1);
  static const Color primary300 = Color(0xff8ce095);
  static const Color primary400 = Color(0xff64c373);
  static const Color primary500 = Color(0xff408c48);
  static const Color primary600 = Color(0xff236825);
  static const Color primary700 = Color(0xff155426);
  static const Color primary800 = Color(0xff052f11);
  static const Color primary900 = Color(0xff031b05);
  static const Color othersWhite = Color(0xffffffff);
  static const Color othersBlue = Color(0xff3784fb);
  static const Color othersYellow = Color(0xfff5be00);
  static const Color othersOrange = Color(0xffff8c39);
  static const Color othersRed = Color(0xffef5a56);
  static const Color othersGreen = Color(0xff34a853);
}

class FigmaTextStyles {
  const FigmaTextStyles();

  double get screenWidth => 375; // Design width for your layout

  TextStyle get headingH1 => TextStyle(
        fontSize: ScreenUtil().setSp(40),
        decoration: TextDecoration.none,
        fontFamily: 'OpenSans-Bold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: ScreenUtil().setHeight(40 / 40),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get headingH2 => TextStyle(
        fontSize: ScreenUtil().setSp(32),
        decoration: TextDecoration.none,
        fontFamily: 'OpenSans-Bold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: ScreenUtil().setHeight(32 / 32),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get headingH3 => TextStyle(
        fontSize: ScreenUtil().setSp(24),
        decoration: TextDecoration.none,
        fontFamily: 'OpenSans-Bold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: ScreenUtil().setHeight(32.4 / 24),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get headingH4 => TextStyle(
        fontSize: ScreenUtil().setSp(20),
        decoration: TextDecoration.none,
        fontFamily: 'OpenSans-Bold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: ScreenUtil().setHeight(27.99 / 20),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get headingH5 => TextStyle(
        fontSize: ScreenUtil().setSp(18),
        decoration: TextDecoration.none,
        fontFamily: 'OpenSans-Bold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: ScreenUtil().setHeight(24.3 / 18),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get headingH6 => TextStyle(
        fontSize: ScreenUtil().setSp(16),
        decoration: TextDecoration.none,
        fontFamily: 'OpenSans-Bold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: ScreenUtil().setHeight(24 / 16),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get body18Medium => TextStyle(
        fontSize: ScreenUtil().setSp(18),
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Medium',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: ScreenUtil().setHeight(27 / 18),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get body16Semibold => TextStyle(
        fontSize: ScreenUtil().setSp(16),
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-SemiBold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        height: ScreenUtil().setHeight(24 / 16),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get body16Medium => TextStyle(
        fontSize: ScreenUtil().setSp(16),
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Medium',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: ScreenUtil().setHeight(24 / 16),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get body16Regular => TextStyle(
        fontSize: ScreenUtil().setSp(16),
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: ScreenUtil().setHeight(24 / 16),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get body14Bold => TextStyle(
        fontSize: ScreenUtil().setSp(14),
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Bold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: ScreenUtil().setHeight(19.59 / 14),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get body14Semibold => TextStyle(
        fontSize: ScreenUtil().setSp(14),
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-SemiBold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        height: ScreenUtil().setHeight(19.59 / 14),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get body14Medium => TextStyle(
        fontSize: ScreenUtil().setSp(14),
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Medium',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: ScreenUtil().setHeight(19.59 / 14),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get body14Regular => TextStyle(
        fontSize: ScreenUtil().setSp(14),
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: ScreenUtil().setHeight(19.59 / 14),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get body12Bold => TextStyle(
        fontSize: ScreenUtil().setSp(12),
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Bold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: ScreenUtil().setHeight(16.2 / 12),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get body12Semibold => TextStyle(
        fontSize: ScreenUtil().setSp(12),
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-SemiBold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        height: ScreenUtil().setHeight(16.2 / 12),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get body12Medium => TextStyle(
        fontSize: ScreenUtil().setSp(12),
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Medium',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: ScreenUtil().setHeight(16.2 / 12),
        letterSpacing: ScreenUtil().setWidth(0),
      );

  TextStyle get body12Regular => TextStyle(
        fontSize: ScreenUtil().setSp(12),
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: ScreenUtil().setHeight(16.2 / 12),
        letterSpacing: ScreenUtil().setWidth(0),
      );
}
