import 'package:flutter/material.dart';
import 'package:weather_app/presenation/resources/values_manger.dart';

import '../../../../resources/app_colors.dart';
import '../../../../resources/app_strings.dart';

class InfoWidget extends StatelessWidget {
  final bool isLight;
  final bool isCollapsed;
  final String image;
  final String title;
  final String subtitle;

  const InfoWidget({
    Key? key,
    required this.isLight,
    required this.isCollapsed,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, height: AppSize.s40),
        const SizedBox(height: AppSize.s8),
        Text(title),
        const SizedBox(height:AppSize.s2_0),
        Text(subtitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w400, color: AppColors.lightGey)),
      ],
    );
  }
}
