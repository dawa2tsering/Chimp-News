// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:chimp_news/utils/constant/app_colors.dart';
import 'package:chimp_news/utils/constant/app_images.dart';
import 'package:flutter/cupertino.dart';

class AppImageWidget extends StatelessWidget {
  double? height;
  double? width;
  String url;
  AppImageWidget({super.key, this.height, this.width, required this.url});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: url,
      placeholder: (context, url) => Image.asset(
        AppImages.chimpvineLogo,
        color: AppColors.backgroundColor.withOpacity(0.8),
        colorBlendMode: BlendMode.modulate,
        fit: BoxFit.cover,
      ),
      errorWidget: (context, url, error) => Image.asset(
        AppImages.chimpvineLogo,
        color: AppColors.backgroundColor.withOpacity(0.2),
        colorBlendMode: BlendMode.modulate,
        fit: BoxFit.cover,
      ),
      fit: BoxFit.cover,
    );
  }
}
