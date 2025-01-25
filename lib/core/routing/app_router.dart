import 'package:doc_on_time/core/routing/routes.dart';
import 'package:doc_on_time/featuers/login/ui/login_screen.dart';
import 'package:doc_on_time/featuers/onboadring/onboadring_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: Routes.onBoardingScreen,
      builder: (context, state) => const OnBoadringScreen(),
    ),
    GoRoute(
      path: Routes.loginScreen,
      builder: (context, state) => const LoginScreen(),
    ),
  ]);
}
