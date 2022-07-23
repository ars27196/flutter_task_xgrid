
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppStyles  {
  static const TextStyle titleTextSize =  TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 22
  );

  static const TextStyle emailTextSize =  TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontSize: 14
  );
  static  TextStyle rowTitleTextSizeBlack(Color textColor) =>  TextStyle(
    color: textColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 18
  );

  static const TextStyle rowTitleTextSizeWhite =  TextStyle(
    color: AppColors.white,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 18
  );
}