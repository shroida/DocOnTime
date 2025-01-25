import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:doc_on_time/core/routing/routes.dart';
import 'package:doc_on_time/core/theming/colors.dart';
import 'package:doc_on_time/core/utlis/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkLoginSession();
  }

  Future<void> checkLoginSession() async {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        context.pushReplacement(Routes.onBoardingScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppImages.logo,
              height: 70, 
            ),
            const SizedBox(width: 20),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'DocOnTime',
                  textStyle: const TextStyle(
                    color: ColorsManagers.mainDark,
                    fontSize: 40, // Reduced for better scaling
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  speed: const Duration(milliseconds: 200),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(seconds: 1),
              displayFullTextOnTap: true,
            ),
          ],
        ),
      ),
    );
  }
}
