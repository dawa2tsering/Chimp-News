import 'package:chimp_news/utils/constant/app_colors.dart';
import 'package:chimp_news/utils/constant/app_images.dart';
import 'package:chimp_news/utils/constant/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class NoDataWidget extends StatelessWidget {
  const NoDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      //wraping with listview and setting shrinkwrap true so can be refreshed
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(30.h),
        children: [
          Center(
            child: Lottie.asset(
              AppImages.noDataLottie,
              repeat: true,
            ),
          ),
          Text(
            "No Data",
            textAlign: TextAlign.center,
            style: AppTextStyles.titleStyle
                .copyWith(color: AppColors.primaryColor),
          )
        ],
      ),
    );
  }
}
