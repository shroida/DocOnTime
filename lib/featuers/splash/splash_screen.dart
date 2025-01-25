import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:doc_on_time/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
  }

  Future<void> checkLoginSession() async {
    Future.delayed(const Duration(seconds: 3), () async {
      GoRouter.of(context).push(Routes.onBoardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'DocOnTime',
              textStyle: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 80,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
              speed: const Duration(milliseconds: 200),
            ),
          ],
          totalRepeatCount: 1,
          pause: const Duration(seconds: 1),
          displayFullTextOnTap: true,
        ),
      ),
    );
  }
}
