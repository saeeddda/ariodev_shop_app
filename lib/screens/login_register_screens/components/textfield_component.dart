import 'package:flutter/material.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';

class CustomTextField {
  Widget customTextField(String lable, bool isPassword, TextTheme textTheme) {
    return SizedBox(
      width: double.infinity,
      height: DefaultDimensions.defaultTextFieldHeight,
      child: TextField(
        obscureText: isPassword ? true : false,
        cursorColor: DefaultDarkColor.darkColor,
        cursorHeight: DefaultDimensions.defaultCursorHeight,
        style: textTheme.subtitle1,
        decoration: InputDecoration(
          label: Text(
            lable,
            style: textTheme.subtitle2,
          ),
        ),
      ),
    );
  }
}
