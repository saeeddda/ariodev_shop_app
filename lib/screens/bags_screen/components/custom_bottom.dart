
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(DefaultLightColor.primaryColor),
            minimumSize: MaterialStateProperty.all(const Size(double.infinity, 58)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))
        ),
        child: Text(title));
  }
}
