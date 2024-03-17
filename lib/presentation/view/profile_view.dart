import 'package:chimp_news/presentation/widget/news_tile_widget.dart';
import 'package:chimp_news/utils/constant/app_colors.dart';
import 'package:chimp_news/utils/constant/app_text_styles.dart';
import 'package:chimp_news/presentation/widget/app_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  List savedNews = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20.h),
          children: [
            Center(
              child: Container(
                height: 100.r,
                width: 100.r,
                decoration: BoxDecoration(
                  color: AppColors.tertiaryColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.accentColor.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: AppImageWidget(url: "url"),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Dawa Tsering Sherpa",
              textAlign: TextAlign.center,
              style: AppTextStyles.titleStyle,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "@Saved News",
              textAlign: TextAlign.center,
              style: AppTextStyles.authorStyle,
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.all(20.h),
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(10.h),
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name :",
                          style: AppTextStyles.headingStyle,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Username :",
                          style: AppTextStyles.headingStyle,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Email :",
                          style: AppTextStyles.headingStyle,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Date of birth :",
                          style: AppTextStyles.headingStyle,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dawa Tsering sherpa",
                          style: AppTextStyles.bodyStyle,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "@Sadf dfdf",
                          style: AppTextStyles.bodyStyle,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Dawa592@gmail.com",
                          style: AppTextStyles.bodyStyle,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "2023/33/34",
                          style: AppTextStyles.bodyStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Saved News",
              style: AppTextStyles.titleStyle,
            ),
            SizedBox(
              height: 20.h,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: savedNews.length,
                itemBuilder: (context, index) {
                  return NewsTileWidget(
                    article: savedNews[index],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
