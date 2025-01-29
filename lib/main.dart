import 'package:doc_on_time/core/di/dependency_injection.dart';
import 'package:doc_on_time/core/helpers/constants.dart';
import 'package:doc_on_time/core/helpers/shared_pref_helper.dart';
import 'package:doc_on_time/core/routing/app_router.dart';
import 'package:doc_on_time/core/helpers/extention.dart';
import 'package:doc_on_time/doc_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set up dependency injection
  setUpGetIt();

  // Initialize app router
  final appRouter = AppRouter();
  await checkIfLoggedInUser();
  // Run the app
  runApp(DocApp(appRouter: appRouter.router));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
