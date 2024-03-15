import 'package:chimp_news/utils/constant/app_colors.dart';
import 'package:chimp_news/utils/constant/app_images.dart';
import 'package:chimp_news/utils/constant/app_text_styles.dart';
import 'package:chimp_news/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginView())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
          child: IntrinsicHeight(
        child: Column(
          children: [
            TweenAnimationBuilder(
              tween: Tween<double>(
                begin: 0.0,
                end: 1.0,
              ),
              duration: const Duration(milliseconds: 1500),
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: Image.asset(
                    AppImages.chimpvineLogo,
                    height: 80.h,
                  ),
                );
              },
            ),
            SizedBox(height: 45.h),
            TweenAnimationBuilder(
                tween: Tween<double>(begin: 0.0, end: 1.0),
                duration: const Duration(milliseconds: 1900),
                builder: (context, value, child) {
                  return Transform.translate(
                    offset: Offset(0.0, -value * 30.0),
                    child: RichText(
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
                  );
                })
          ],
        ),
      )),
    );
  }
}
