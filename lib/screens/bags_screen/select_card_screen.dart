// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/screens/bags_screen/components/add_card_bottomsheet.dart';
import 'package:shop_app/screens/bags_screen/components/custom_bottom.dart';
import 'package:shop_app/screens/bags_screen/components/default_appbar.dart';
import 'package:shop_app/screens/bags_screen/components/payment_card_item.dart';
import 'package:shop_app/screens/login_register_screens/components/textfield_component.dart';

class SelectCardScreen extends StatelessWidget {
  const SelectCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = DefaultThemeData.light().getTheme.textTheme;
    const bodyMargin = DefaultDimensions.defaultPadding;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addCardBottomSheet(context,textTheme);
        },
        backgroundColor: DefaultLightColor.primaryTextColor,
        child: const Icon(
          Icons.add,
          size: 48,
        ),
      ),
      appBar: defaultAppBar("Payment methods"),
      backgroundColor: DefaultLightColor.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: bodyMargin, top: 32),
            child: Text("Your payment cards", style: textTheme.headline3),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 6,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return PaymentCardItem(index: index,);
            },
          )),
          const SizedBox(height: 64)
        ],
      ),
    );
  }



}

