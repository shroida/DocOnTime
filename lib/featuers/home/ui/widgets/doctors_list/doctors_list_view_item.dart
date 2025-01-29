import 'dart:math';
import 'package:doc_on_time/core/utlis/app_images.dart';
import 'package:flutter/material.dart';
import 'package:doc_on_time/core/theming/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../data/models/specializations_response_model.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    String getRandomImage() {
      final random = Random();
      if (doctorsModel?.gender?.toLowerCase() == "male") {
        return [
          AppImages.manDocImg1,
          AppImages.manDocImg2,
          AppImages.manDocImg3,
        ][random.nextInt(3)];
      } else if (doctorsModel?.gender?.toLowerCase() == "female") {
        return [
          AppImages.womanDocImg1,
          AppImages.womanDocImg2,
          AppImages.womanDocImg3,
        ][random.nextInt(3)];
      }
      return AppImages.generalSpeciality;
    }

    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Container(
            width: 110.w,
            height: 120.h,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: AssetImage(getRandomImage()),
                fit: BoxFit.cover,
              ),
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? 'Name',
                  style: AppStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                  style: AppStyles.font12GrayMedium,
                ),
                verticalSpace(5),
                Text(
                  doctorsModel?.gender ?? 'Email',
                  style: AppStyles.font12GrayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
