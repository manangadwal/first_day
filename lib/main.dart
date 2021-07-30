import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/auth/login.dart';
import 'app/screens/Home/homepage.dart';
import 'core/routes.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().lightTheme,
        darkTheme: AppTheme().darkTheme,
        themeMode: ThemeMode.light,
        initialRoute: MyRoutes.homeRoute,
        routes: routes);
  }
}
