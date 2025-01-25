import 'package:doc_on_time/core/routing/routes.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: Routes.onBoardingScreen,
      builder: (context, state) => onBoadringScreen(),
    ),
    GoRoute(
      path: Routes.loginScreen,
      builder: (context, state) => LoginScreen(),
    ),
  ]);
}
