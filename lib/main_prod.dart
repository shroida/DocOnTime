import 'package:doc_on_time/core/di/dependency_injection.dart';
import 'package:doc_on_time/core/routing/app_router.dart';
import 'package:doc_on_time/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Set up dependency injection
  setUpGetIt();
  
  // Initialize app router
  final appRouter = AppRouter();

  // Run the app
  runApp(DocApp(appRouter: appRouter.router));
}
