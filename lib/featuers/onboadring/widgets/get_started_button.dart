import 'package:doc_on_time/core/routing/routes.dart';
import 'package:doc_on_time/core/theming/app_styles.dart';
import 'package:doc_on_time/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: TextButton(
        onPressed: () {
          context.push(Routes.loginScreen);
        },
        style: ButtonStyle(
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize:
                WidgetStateProperty.all(const Size(double.infinity, 52)),
            backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue)),
        child: Text(
          'Get Started',
          style: AppStyles.font16WhiteSemiBold,
        ),
      ),
    );
  }
}
