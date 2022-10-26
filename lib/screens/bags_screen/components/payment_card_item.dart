// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';

class PaymentCardItem extends StatelessWidget {
  PaymentCardItem({
    required this.index,
    Key? key,
  }) : super(key: key);

  int index;

  @override
  Widget build(BuildContext context) {
    final textTheme = DefaultThemeData.light().getTheme.textTheme;
    const bodyMargin = DefaultDimensions.defaultPadding;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(
              bodyMargin, 29, bodyMargin, 25),
          padding: const EdgeInsets.fromLTRB(
              bodyMargin, 64, bodyMargin, 32),
          width: double.infinity,
          height: 216,
          decoration: BoxDecoration(
              color: DefaultLightColor.primaryTextColor,
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              //card number
              Expanded(
                  child: Text(
                    "* * * *  * * * *  * * * *  3947",
                    style: textTheme.headline2!
                        .apply(color: DefaultLightColor.whiteColor),
                  )),
              //card information
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Card Holder Name",
                          style: textTheme.subtitle1!.apply(
                              color: DefaultLightColor.whiteColor)),
                      const SizedBox(height: 12),
                      Text("Jennyfer Doe",
                          style: textTheme.headline4!.apply(
                              color: DefaultLightColor.whiteColor)),
                    ],
                  ),
                  const SizedBox(width: 24),
                  Column(
                    children: [
                      Text("Expiry Date",
                          style: textTheme.subtitle1!.apply(
                              color: DefaultLightColor.whiteColor)),
                      const SizedBox(height: 12),
                      Text("05/23",
                          style: textTheme.headline4!.apply(
                              color: DefaultLightColor.whiteColor)),
                    ],
                  ),
                  Image.asset(
                    "assets/icons/master.png",
                    width: 64,
                  )
                ],
              )
            ],
          ),
        ),
        Row(
          children: [
            Checkbox(
              value: index == 0 ? true : false,
              onChanged: (value) {},
              fillColor: MaterialStateProperty.all(
                  DefaultLightColor.primaryTextColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
            ),
            Text(
              "Use as default payment method",
              style: textTheme.subtitle1,
            )
          ],
        )
      ],
    );
  }
}
