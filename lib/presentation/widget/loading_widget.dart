import 'package:chimp_news/utils/constant/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      //wraping with listview and setting shrinkwrap true so can be refreshed
      //wrapping with center to get widgets in center
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(100.h),
        children: [
          Lottie.asset(
            AppImages.loadingLottie,
            repeat: true,
          ),
        ],
      ),
    );
  }
}
