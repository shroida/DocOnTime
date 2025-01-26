import 'package:doc_on_time/core/theming/app_styles.dart';
import 'package:doc_on_time/core/utlis/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocImageText extends StatelessWidget {
  const DocImageText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppImages.logoLowOpacity),
        Container(
          height: 520.h,
          alignment: Alignment.centerLeft,
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, Colors.white.withOpacity(0.0)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0.14, 0.4])),
          child: Image.asset(AppImages.docImg),
        ),
        Positioned(
          bottom: 60.h,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\n Appointment App',
            style: AppStyles.font32BlueBold.copyWith(height: 1.4),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
