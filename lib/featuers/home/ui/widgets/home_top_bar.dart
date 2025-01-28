import 'package:doc_on_time/core/theming/app_styles.dart';
import 'package:doc_on_time/core/theming/colors.dart';
import 'package:doc_on_time/core/utlis/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Shroida!',
              style: AppStyles.font18DarkBlueBold,
            ),
            Text(
              'How Are you Today?',
              style: AppStyles.font12GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: ColorsManager.moreLighterGray,
          child: SvgPicture.asset(
            AppImages.notifi,
          ),
        )
      ],
    );
  }
}
