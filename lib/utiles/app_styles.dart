import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utiles/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16 = TextStyle(
    color: const Color(0xff064061),
    fontSize: getResponsiveFontSize(fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleMeduim16 = TextStyle(
    color: const Color(0xff064061),
    fontSize: getResponsiveFontSize(fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static TextStyle styleSemiBold16 = TextStyle(
    color: const Color(0xff064061),
    fontSize: getResponsiveFontSize(fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleSemiBold20 = TextStyle(
    color: const Color(0xFF064061),
    fontSize: getResponsiveFontSize(fontsize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleRegular12 = TextStyle(
    color: const Color(0xffAAAAAA),
    fontSize: getResponsiveFontSize(fontsize: 12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleSemiBold24 = TextStyle(
    color: const Color(0xff4EB7F2),
    fontSize: getResponsiveFontSize(fontsize: 24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleRegular14 = TextStyle(
    color: const Color(0xffAAAAAA),
    fontSize: getResponsiveFontSize(fontsize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleSemiBold18 = TextStyle(
    color: const Color(0xff4EB7F2),
    fontSize: getResponsiveFontSize(fontsize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleBold16 = TextStyle(
    color: const Color(0xff4EB7F2),
    fontSize: getResponsiveFontSize(fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );

  static TextStyle styleMeduim20 = TextStyle(
    color: Colors.white,
    fontSize: getResponsiveFontSize(fontsize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
}

double getResponsiveFontSize({required double fontsize}) {
  double ScaleFactor = getScaleFactor();
  double responsiveFontSize = fontsize * ScaleFactor;

  double lowerLimit = fontsize * 0.8;
  double upperLimit = fontsize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalwidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRaio = dispatcher.views.first.devicePixelRatio;
  double width = physicalwidth / devicePixelRaio;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
