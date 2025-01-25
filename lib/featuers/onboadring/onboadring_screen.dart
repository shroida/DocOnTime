import 'package:doc_on_time/featuers/onboadring/widgets/description_text.dart';
import 'package:doc_on_time/featuers/onboadring/widgets/doc_image_text.dart';
import 'package:doc_on_time/featuers/onboadring/widgets/doc_logo_name.dart';
import 'package:doc_on_time/featuers/onboadring/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoadringScreen extends StatelessWidget {
  const OnBoadringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
          top: 8.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const DocLogoName(),
              SizedBox(
                height: 10.h,
              ),
              const DocImageText(),
              const DescriptionText(),
              SizedBox(
                height: 8.h,
              ),
              const GetStartedButton(),
            ],
          ),
        ),
      )),
    );
  }
}
