import 'package:chimp_news/utils/constant/app_colors.dart';
import 'package:chimp_news/utils/constant/app_font_size.dart';
import 'package:chimp_news/utils/constant/app_images.dart';
import 'package:chimp_news/utils/constant/app_text_styles.dart';
import 'package:chimp_news/view/landing_page_view.dart';
import 'package:chimp_news/view/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Column(
            children: [
              Image.asset(
                AppImages.chimpvineLogo,
                height: 80.h,
              ),
              SizedBox(height: 20.h),
              RichText(
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
              ),
              SizedBox(height: 20.h),
              Container(
                margin: EdgeInsets.fromLTRB(16.w, 0, 16.w, 0),
                decoration: BoxDecoration(
                    color: AppColors.tertiaryColor,
                    borderRadius: BorderRadius.circular(10.h)),
                child: TextFormField(
                  onChanged: (val) {},
                  onEditingComplete: () {},
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: AppTextStyles.authorStyle
                          .copyWith(fontSize: AppFontSize.f14),
                      prefixIcon: Icon(
                        Icons.email,
                        size: 14.h,
                        color: AppColors.accentColor,
                      ),
                      border: InputBorder.none),
                  style: AppTextStyles.authorStyle
                      .copyWith(fontSize: AppFontSize.f14),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                margin: EdgeInsets.fromLTRB(16.w, 0, 16.w, 0),
                decoration: BoxDecoration(
                    color: AppColors.tertiaryColor,
                    borderRadius: BorderRadius.circular(10.h)),
                child: TextFormField(
                  onChanged: (val) {},
                  onEditingComplete: () {},
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: AppTextStyles.authorStyle
                          .copyWith(fontSize: AppFontSize.f14),
                      prefixIcon: Icon(
                        Icons.password,
                        size: 14.h,
                        color: AppColors.accentColor,
                      ),
                      border: InputBorder.none),
                  style: AppTextStyles.authorStyle
                      .copyWith(fontSize: AppFontSize.f14),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 40.h),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LandingPageView()));
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Text(
                    "Login",
                    style: AppTextStyles.headingStyle
                        .copyWith(color: AppColors.backgroundColor),
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "Don't have account? ",
                      style: AppTextStyles.bodyStyle,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupView()));
                    },
                    child: Text(
                      "SignUp",
                      style: AppTextStyles.headingStyle
                          .copyWith(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  Widget textFieldView() {
    return Container(
      margin: EdgeInsets.fromLTRB(20.w, 0, 20.w, 0),
      decoration: BoxDecoration(
          color: AppColors.tertiaryColor,
          borderRadius: BorderRadius.circular(10.h)),
      child: TextFormField(
        onChanged: (val) {},
        onEditingComplete: () {},
        decoration: InputDecoration(
            hintText: 'Add Label',
            hintStyle:
                AppTextStyles.authorStyle.copyWith(fontSize: AppFontSize.f14),
            prefixIcon: Icon(
              Icons.search,
              size: 14.h,
              color: AppColors.accentColor,
            ),
            border: InputBorder.none),
        style: AppTextStyles.authorStyle.copyWith(fontSize: AppFontSize.f14),
      ),
    );
  }
}
