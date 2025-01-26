import 'package:doc_on_time/core/theming/app_styles.dart';
import 'package:doc_on_time/core/utlis/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoName extends StatelessWidget {
  const DocLogoName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImages.logo),
        SizedBox(
          width: 10.w,
        ),
        Text('DocOnTime', style: AppStyles.font24BlackBold)
      ],
    );
  }
}
 