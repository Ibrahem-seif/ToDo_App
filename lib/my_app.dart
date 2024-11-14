import 'package:flutter/material.dart';
import 'package:todoo_app/config/theme/app_theme.dart';
import 'package:todoo_app/core/utils/routes_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      onGenerateRoute: RoutesManager.router,
      initialRoute: RoutesManager.home,
    );
  }
}
