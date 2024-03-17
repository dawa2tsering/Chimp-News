import 'package:chimp_news/presentation/widget/no_data_widget.dart';
import 'package:chimp_news/utils/constant/app_colors.dart';
import 'package:chimp_news/utils/constant/app_text_styles.dart';
import 'package:chimp_news/presentation/widget/news_tile_widget.dart';
import 'package:chimp_news/utils/database/app_database.dart';
import 'package:chimp_news/utils/locator/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedView extends StatefulWidget {
  const SavedView({super.key});

  @override
  State<SavedView> createState() => _SavedViewState();
}

class _SavedViewState extends State<SavedView> {
  List savedNews = [];

  @override
  void initState() {
    super.initState();
    fetchSavedNews();
  }

  fetchSavedNews() async {
    List response = await locator<AppDatabase>().queryAllNews();
    setState(() {
      savedNews = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: RefreshIndicator(
        onRefresh: () async {
          await fetchSavedNews();
        },
        child: savedNews.isEmpty
            ? const NoDataWidget(
              )
            : ListView(
                padding: EdgeInsets.all(20.h),
                children: [
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
