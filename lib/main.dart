import 'package:flutter/material.dart';
import 'package:shop_app/screens/home_screen.dart';
import 'package:shop_app/screen/login_register_screens/forgetpassword_screen.dart';
import 'package:shop_app/screen/login_register_screens/login_screen.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/screen/login_register_screens/register_screen.dart';
import 'package:shop_app/screen/login_register_screens/verification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoping App',
      theme: DefaultThemeData.light().getTheme,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
