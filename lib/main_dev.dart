import 'package:doc_on_time/core/di/dependency_injection.dart';
import 'package:doc_on_time/core/routing/app_router.dart';
import 'package:doc_on_time/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set up dependency injection
  setUpGetIt();
  // fixing hiddin texts in dev version
  await ScreenUtil.ensureScreenSize();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.amber,
    systemNavigationBarColor: Colors.red,
  ));
  // Initialize app router
  final appRouter = AppRouter();

  // Run the app
  runApp(DocApp(appRouter: appRouter.router));
}
