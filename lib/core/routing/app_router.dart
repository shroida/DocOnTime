import 'package:doc_on_time/featuers/login/ui/login_screen.dart';
import 'package:doc_on_time/featuers/onboadring/onboadring_screen.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    routes: [
      // Route for Onboarding Screen
      GoRoute(
        path: Routes.onBoardingScreen,
        builder: (context, state) => const OnBoadringScreen(),
      ),
      GoRoute(
        path: Routes.onBoardingScreen,
        builder: (context, state) => const OnBoadringScreen(),
      ),
      // Route for Login Screen
      GoRoute(
        path: Routes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
    initialLocation: Routes.onBoardingScreen, // Set the initial route
  );
}
