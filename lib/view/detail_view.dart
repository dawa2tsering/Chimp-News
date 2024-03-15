import 'package:chimp_news/utils/constant/app_colors.dart';
import 'package:chimp_news/utils/constant/app_images.dart';
import 'package:chimp_news/utils/constant/app_text_styles.dart';
import 'package:chimp_news/widget/app_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class DetailView extends StatefulWidget {
  String url;
  String heading;
  String author;
  DetailView(
      {super.key,
      required this.url,
      required this.heading,
      required this.author});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  bool saved = false;
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
            child: AppImageWidget(url: ""),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            widget.heading,
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
                  text: 'auther adf ',
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
            "adfad lakdjf adfkjadlfka sdlkjadsdldf adfadsf addd d d d d d dfdfdf dff df dfdf df  faslkdfj asldkfj asldkfj alkdsjf alskdjf alksdjflaskdjf laskdjfalskdjflkasdjf alksdjflaksdjfalskdfj df df df  askdfjalksjf ",
            textAlign: TextAlign.justify,
            style: AppTextStyles.bodyStyle,
          ),
        ],
      ),
    );
  }
}
