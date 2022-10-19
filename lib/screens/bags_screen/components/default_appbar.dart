import 'package:flutter/material.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_theme_data.dart';

AppBar defaultAppBar(String title) {
  final textTheme = DefaultThemeData.light().getTheme.textTheme;
  return AppBar(
    backgroundColor: DefaultLightColor.whiteColor,
    elevation: 3,
    shadowColor: Colors.black.withOpacity(0.3),
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.arrow_back_ios_new_outlined,
        color: DefaultLightColor.primaryTextColor,
      ),
    ),
    title: Text(
      title,
      style: textTheme.headline2,
    ),
    centerTitle: true,
  );
}