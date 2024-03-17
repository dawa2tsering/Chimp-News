import 'package:chimp_news/data/models/news_model.dart';
import 'package:chimp_news/utils/constant/app_colors.dart';
import 'package:chimp_news/utils/constant/app_images.dart';
import 'package:chimp_news/utils/constant/app_text_styles.dart';
import 'package:chimp_news/presentation/widget/app_image_widget.dart';
import 'package:chimp_news/utils/database/app_database.dart';
import 'package:chimp_news/utils/locator/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class DetailView extends StatefulWidget {
  Article article;
  DetailView({super.key, required this.article});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  bool saved = false;

  @override
  void initState() {
    checkSaveStatus();
    super.initState();
  }

  //check if the news is saved or not
  checkSaveStatus() async {
    bool response = await locator<AppDatabase>()
        .checkSaveStatus(title: widget.article.title ?? "xxx");
    setState(() {
      saved = response;
    });
  }

  //save news
  saveNews({required Article news}) async {
    await locator<AppDatabase>().insertNews({
      "author": widget.article.author,
      "title": widget.article.title,
      "description": widget.article.description,
      "url": widget.article.url,
      "urlToImage": widget.article.urlToImage,
      "publishedAt": widget.article.publishedAt.toString(),
      "content": widget.article.content,
    });
    setState(() {
      saved = true;
    });
  }

  //delete news
  deleteNews({required String title}) async {
    await locator<AppDatabase>().deleteNews(title: title);
    setState(() {
      saved = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.only(
              left: 20.w,
            ),
            child: Image.asset(AppImages.chimpvineLogo)),
        centerTitle: true,
        title: Text(
          "Detail",
          style: AppTextStyles.appBarStyle,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              if (widget.article.title != null ||
                  widget.article.title != "xxx") {
                saved
                    ? deleteNews(title: widget.article.title ?? "xxx")
                    : saveNews(news: widget.article);
              }
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: 20.w,
              ),
              child: Icon(
                saved ? Icons.bookmark : Icons.bookmark_border_rounded,
                color: AppColors.primaryColor,
                size: 26.h,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20.h),
        children: [
          Container(
            height: 280.h,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.circular(5.h),
              boxShadow: [
                BoxShadow(
                  color: AppColors.accentColor.withOpacity(0.13),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: AppImageWidget(url: widget.article.url ?? "xxx"),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            widget.article.title ?? "xxx",
            style: AppTextStyles.titleStyle,
          ),
          SizedBox(
            height: 10.h,
          ),
          RichText(
            text: TextSpan(
              text: 'By: ',
              style: AppTextStyles.authorStyle,
              children: <TextSpan>[
                TextSpan(
                  text: widget.article.author ?? "xxx",
                  style: AppTextStyles.authorStyle
                      .copyWith(decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            widget.article.content ?? "xxx xxx xxx",
            textAlign: TextAlign.justify,
            style: AppTextStyles.bodyStyle,
          ),
        ],
      ),
    );
  }
}
