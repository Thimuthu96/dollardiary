import 'package:flutter/material.dart';

import 'src/app/routes/routes.dart';
import 'src/core/theme/AppTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Dollar Diary',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      // themeMode: ThemeMode.system,
      routerConfig: AppRoutes.customRouter,
    );
  }
}
