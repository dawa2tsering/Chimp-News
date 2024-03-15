import 'package:chimp_news/utils/constant/app_colors.dart';
import 'package:chimp_news/utils/constant/app_font_size.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle get appBarStyle {
    return TextStyle(
      fontSize: AppFontSize.f18,
      fontWeight: FontWeight.bold,
      color: AppColors.secondaryColor,
    );
  }

  static TextStyle get titleStyle {
    return TextStyle(
      fontSize: AppFontSize.f16,
      fontWeight: FontWeight.bold,
      color: AppColors.secondaryColor,
    );
  }

  static TextStyle get headingStyle {
    return TextStyle(
      fontSize: AppFontSize.f14,
      fontWeight: FontWeight.bold,
      color: AppColors.secondaryColor,
    );
  }

  static TextStyle get bodyStyle {
    return TextStyle(
      fontSize: AppFontSize.f14,
      color: AppColors.accentColor,
    );
  }

  static TextStyle get authorStyle {
    return TextStyle(
      fontSize: AppFontSize.f12,
      color: AppColors.accentColor,
    );
  }
}
