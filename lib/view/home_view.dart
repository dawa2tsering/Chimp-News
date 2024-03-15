import 'package:chimp_news/utils/constant/app_colors.dart';
import 'package:chimp_news/utils/constant/app_text_styles.dart';
import 'package:chimp_news/view/detail_view.dart';
import 'package:chimp_news/widget/app_image_widget.dart';
import 'package:chimp_news/widget/news_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.h),
        physics: const BouncingScrollPhysics(),
        children: [
          _viewTrendingWidget(context: context),
          SizedBox(
            height: 10.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  "Breaking News",
                  style: AppTextStyles.titleStyle,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Show More",
                  style: AppTextStyles.bodyStyle,
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                _newsCardWidget(
                    context: context,
                    url: "url",
                    heading: "heading",
                    author: "author"),
                _newsCardWidget(
                    context: context,
                    url: "url",
                    heading: "heading",
                    author: "author"),
                _newsCardWidget(
                    context: context,
                    url: "url",
                    heading: "heading",
                    author: "author"),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  "Popular News",
                  style: AppTextStyles.titleStyle,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Show More",
                  style: AppTextStyles.bodyStyle,
                ),
              ),
            ],
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

  //helper classes
  Widget _viewTrendingWidget({required BuildContext context}) {
    return Stack(
      children: [
        Container(
          height: 200.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.tertiaryColor,
            borderRadius: BorderRadius.circular(10.w),
            boxShadow: [
              BoxShadow(
                color: AppColors.accentColor.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: AppImageWidget(url: "Path"),
        ),
        Container(
          height: 200.h,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10.h),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                AppColors.secondaryColor.withOpacity(0.5),
                AppColors.accentColor.withOpacity(0.2)
              ],
            ),
            borderRadius: BorderRadius.circular(10.w),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.h),
                  decoration: BoxDecoration(
                      color: AppColors.accentColor.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(5.w)),
                  child: Text(
                    "Trending News",
                    style: AppTextStyles.authorStyle
                        .copyWith(color: AppColors.backgroundColor),
                  ),
                ),
              ),
              Flexible(
                child: Text(
                  "Trending News is that we will have soon very forward so no need to worry about the details Trending News is that we will have soon very forward so no need to worry about the details",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.appBarStyle
                      .copyWith(color: AppColors.backgroundColor),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailView(
                                url: "url",
                                heading: "adfk akdaf;laskd aldkf aldkf",
                                author: "dfa falkdjf")));
                  },
                  child: IntrinsicWidth(
                    child: Row(
                      children: [
                        Text(
                          "Learn More ",
                          style: AppTextStyles.bodyStyle.copyWith(
                              color: AppColors.backgroundColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_right_alt_sharp,
                          color: AppColors.backgroundColor,
                          size: 15.h,
                        )
                      ],
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }

  Widget _newsCardWidget(
      {required BuildContext context,
      required String url,
      required String heading,
      required String author}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailView(url: url, heading: heading, author: author)));
      },
      child: Container(
        margin: EdgeInsets.only(right: 15.w, bottom: 4.h, left: 4.h, top: 4.h),
        padding: EdgeInsets.all(10.h),
        width: MediaQuery.of(context).size.width * 0.5,
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
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.tertiaryColor,
                  borderRadius: BorderRadius.circular(10.w),
                ),
                child: AppImageWidget(url: url),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                heading,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.headingStyle,
              ),
              SizedBox(
                height: 5.h,
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
      ),
    );
  }
}
