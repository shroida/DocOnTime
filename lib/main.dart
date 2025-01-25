import 'package:doc_on_time/core/routing/app_router.dart';
import 'package:doc_on_time/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  // Create an instance of AppRouter
  final appRouter = AppRouter();

  // Run the app and pass the appRouter to DocApp
  runApp(DocApp(appRouter: appRouter.router));
}
