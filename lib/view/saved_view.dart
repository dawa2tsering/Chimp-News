import 'package:chimp_news/utils/constant/app_colors.dart';
import 'package:chimp_news/utils/constant/app_text_styles.dart';
import 'package:chimp_news/widget/news_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedView extends StatelessWidget {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        padding: EdgeInsets.all(20.h),
        children: [
          Text(
            "Saved News",
            style: AppTextStyles.titleStyle,
          ),
          SizedBox(
            height: 20.h,
          ),
          NewsTileWidget(
              url: "url",
              heading:
                  "headingheadingheadingheadingheadingheadingheadingheading",
              author: "authorheadingheading"),
          NewsTileWidget(
              url: "url",
              heading:
                  "headingheadingheadingheadingheadingheadingheadingheading",
              author: "authorheadingheading"),
          NewsTileWidget(
              url: "url",
              heading:
                  "headingheadingheadingheadingheadingheadingheadingheading",
              author: "authorheadingheading"),
          NewsTileWidget(
              url: "url",
              heading:
                  "headingheadingheadingheadingheadingheadingheadingheading",
              author: "authorheadingheading"),
          NewsTileWidget(
              url: "url",
              heading:
                  "headingheadingheadingheadingheadingheadingheadingheading",
              author: "authorheadingheading"),
          NewsTileWidget(
              url: "url",
              heading:
                  "headingheadingheadingheadingheadingheadingheadingheading",
              author: "authorheadingheading"),
        ],
      ),
    );
  }
}
