import 'package:chimp_news/utils/constant/app_colors.dart';
import 'package:chimp_news/utils/constant/app_text_styles.dart';
import 'package:chimp_news/widget/news_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constant/app_font_size.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: Column(
          children: [
            _searchFieldView(),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: _boxWidget(context: context, indexi: 0, label: "All"),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: _boxWidget(context: context, indexi: 1, label: "News"),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child:
                      _boxWidget(context: context, indexi: 2, label: "Media"),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: IndexedStack(
                index: index,
                children: [
                  _allView(context: context),
                  _newsView(context: context),
                  _mediaView(context: context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _allView({required BuildContext context}) {
    return ListView(
      shrinkWrap: true,
      children: [
        NewsTileWidget(
            url: "url",
            heading: "headingheadingheadingheadingheadingheadingheadingheading",
            author: "authorheadingheading"),
        NewsTileWidget(
            url: "url",
            heading: "headingheadingheadingheadingheadingheadingheadingheading",
            author: "authorheadingheading"),
        NewsTileWidget(
            url: "url",
            heading: "headingheadingheadingheadingheadingheadingheadingheading",
            author: "authorheadingheading"),
        NewsTileWidget(
            url: "url",
            heading: "headingheadingheadingheadingheadingheadingheadingheading",
            author: "authorheadingheading"),
        NewsTileWidget(
            url: "url",
            heading: "headingheadingheadingheadingheadingheadingheadingheading",
            author: "authorheadingheading"),
        NewsTileWidget(
            url: "url",
            heading: "headingheadingheadingheadingheadingheadingheadingheading",
            author: "authorheadingheading"),
      ],
    );
  }

  Widget _newsView({required BuildContext context}) {
    return Column(
      children: [
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
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
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
        )
      ],
    );
  }

  Widget _mediaView({required BuildContext context}) {
    return ListView(
      children: [
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          children: [
            Expanded(child: _mediaBoxWidget()),
            Expanded(child: _mediaBoxWidget()),
            Expanded(child: _mediaBoxWidget()),
            Expanded(child: _mediaBoxWidget()),
            Expanded(child: _mediaBoxWidget()),
            Expanded(child: _mediaBoxWidget()),
            Expanded(child: _mediaBoxWidget()),
            Expanded(child: _mediaBoxWidget()),
            Expanded(child: _mediaBoxWidget()),
            Expanded(child: _mediaBoxWidget()),
            Expanded(child: _mediaBoxWidget()),
            Expanded(child: _mediaBoxWidget()),
            Expanded(child: _mediaBoxWidget()),
            Expanded(child: _mediaBoxWidget()),
          ],
        ),
      ],
    );
  }

  //helper class
  Widget _mediaBoxWidget() {
    return Container(
      margin: EdgeInsets.only(bottom: 20.w),
      padding: EdgeInsets.all(20.h),
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
      child: Column(
        children: [
          Icon(
            Icons.now_widgets_outlined,
            size: 40.h,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "heading",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.headingStyle,
          ),
        ],
      ),
    );
  }

  Widget _searchFieldView() {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.tertiaryColor,
          borderRadius: BorderRadius.circular(10.h)),
      child: TextFormField(
        onChanged: (val) {},
        onEditingComplete: () {},
        decoration: InputDecoration(
            hintText: 'Search anthing here',
            hintStyle:
                AppTextStyles.authorStyle.copyWith(fontSize: AppFontSize.f14),
            prefixIcon: Icon(
              Icons.search,
              size: 16.h,
              color: AppColors.accentColor,
            ),
            border: InputBorder.none),
        style: AppTextStyles.authorStyle.copyWith(fontSize: AppFontSize.f14),
      ),
    );
  }

  Widget _boxWidget({
    required BuildContext context,
    required int indexi,
    required String label,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          index = indexi;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
            color: indexi == index
                ? AppColors.primaryColor
                : AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(color: AppColors.tertiaryColor)),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: AppTextStyles.headingStyle.copyWith(
            color: indexi == index
                ? AppColors.backgroundColor
                : AppColors.accentColor,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
