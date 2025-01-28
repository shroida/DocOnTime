import 'package:doc_on_time/core/di/dependency_injection.dart';
import 'package:doc_on_time/featuers/home/logic/home_cubit.dart';
import 'package:doc_on_time/featuers/home/ui/home_screen.dart';
import 'package:doc_on_time/featuers/login/logic/login_cubit.dart';
import 'package:doc_on_time/featuers/login/ui/login_screen.dart';
import 'package:doc_on_time/featuers/onboadring/onboadring_screen.dart';
import 'package:doc_on_time/featuers/signup/logic/signup_cubit.dart';
import 'package:doc_on_time/featuers/signup/ui/signup_screen.dart';
import 'package:doc_on_time/featuers/splash/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: Routes.onBoardingScreen,
        builder: (context, state) => const OnBoadringScreen(),
      ),
      GoRoute(
        path: Routes.loginScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: Routes.homeScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => HomeCubit(getIt())..getSpecializations(),
          child: const HomeScreen(),
        ),
      ),
      GoRoute(
        path: Routes.signupScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<SignupCubit>(),
          child: const SignupScreen(),
        ),
      ),
    ],
    initialLocation: Routes.splashScreen,
  );
}
