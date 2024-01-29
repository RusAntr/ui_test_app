import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_test_app/config/routes/app_router.dart';
import 'package:ui_test_app/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());

  /// Status bar and Navigation bar styles
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    statusBarColor: Colors.white,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'UI Test App',
      theme: AppThemes.defaultTheme,
    );
  }
}
