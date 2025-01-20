import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utiles/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMeduim16(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontsize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(context, fontsize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(context, fontsize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMeduim20(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontsize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
}

double getResponsiveFontSize(context, {required double fontsize}) {
  double ScaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontsize * ScaleFactor;

  double lowerLimit = fontsize * 0.8;
  double upperLimit = fontsize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  //var physicalwidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRaio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalwidth / devicePixelRaio;
  double width = MediaQuery.sizeOf(context).width;
  print(width);
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
