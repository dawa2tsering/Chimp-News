import 'package:chimp_news/utils/constant/app_colors.dart';
import 'package:chimp_news/utils/constant/app_text_styles.dart';
import 'package:chimp_news/view/detail_view.dart';
import 'package:chimp_news/widget/app_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class NewsTileWidget extends StatelessWidget {
  String url;
  String heading;
  String author;
  NewsTileWidget(
      {super.key,
      required this.url,
      required this.heading,
      required this.author});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailView(url: url, heading: heading, author: author)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20.w),
        padding: EdgeInsets.all(10.h),
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(5.h),
          boxShadow: [
            BoxShadow(
              color: AppColors.accentColor.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 70.h,
              decoration: BoxDecoration(
                color: AppColors.tertiaryColor,
                borderRadius: BorderRadius.circular(10.w),
              ),
              child: AppImageWidget(url: url),
            ),
            SizedBox(
              width: 10.h,
            ),
            Expanded(
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.headingStyle,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      author,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.authorStyle,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
