import 'package:chimp_news/utils/constant/app_colors.dart';
import 'package:chimp_news/utils/constant/app_font_size.dart';
import 'package:chimp_news/utils/constant/app_images.dart';
import 'package:chimp_news/utils/constant/app_text_styles.dart';
import 'package:chimp_news/view/home_view.dart';
import 'package:chimp_news/view/profile_view.dart';
import 'package:chimp_news/view/saved_view.dart';
import 'package:chimp_news/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LandingPageView extends StatefulWidget {
  const LandingPageView({super.key});

  @override
  State<LandingPageView> createState() => _LandingPageViewState();
}

class _LandingPageViewState extends State<LandingPageView> {
  int index = 0;

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
          title: index == 0
              ? RichText(
                  text: TextSpan(
                    text: 'CHIMPVINE ',
                    style: AppTextStyles.appBarStyle,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'NEWS',
                        style: AppTextStyles.appBarStyle
                            .copyWith(color: AppColors.primaryColor),
                      ),
                    ],
                  ),
                )
              : Text(
                  index == 1
                      ? "Discover"
                      : index == 2
                          ? "Saved"
                          : "Profile",
                  style: AppTextStyles.appBarStyle,
                ),
        ),
        body: IndexedStack(
          index: index,
          children: const [
            HomeView(),
            SearchView(),
            SavedView(),
            ProfileView()
          ],
        ),
        bottomNavigationBar: _bottomNavigationMenu(context));
  }

  Widget _bottomNavigationMenu(context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: AppColors.backgroundColor,
      ),
      child: BottomNavigationBar(
        iconSize: 25.h,
        onTap: (indexi) {
          setState(() {
            index = indexi;
          });
        },
        currentIndex: index,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: const Color(0xff8f8f8f),
        selectedFontSize: AppFontSize.f12,
        unselectedFontSize: AppFontSize.f10,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border_rounded), label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
        ],
      ),
    );
  }
}
