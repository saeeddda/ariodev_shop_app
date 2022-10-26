
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_theme_data.dart';

class OffTextField extends StatelessWidget {
  OffTextField({
    Key? key,
    required this.onPress
  }) : super(key: key);

  Function() onPress;

  @override
  Widget build(BuildContext context) {
    final textTheme = DefaultThemeData.light().getTheme.textTheme;
    return Stack(
      children: [
        Container(
          height: 36,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0,4)
                ),
              ]
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: DefaultLightColor.whiteColor,
              hintText: "Enter your promo code",
              hintStyle: textTheme.subtitle1!.apply(color: DefaultLightColor.secondaryTextColor),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: InkWell(
            onTap: () => onPress(),
            child: Container(
              width: 35,
              height: 36,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle
              ),
              child: const Icon(Icons.arrow_forward_rounded,color: DefaultLightColor.whiteColor,),
            ),
          ),
        ),
      ],
    );
  }
}
