import 'package:flutter/material.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/screens/profile_screen/order_details_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoping App',
      theme: DefaultThemeData.light().getTheme,
      home: const OrderDetailsScreen(),
    );
  }
}
