import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/screens/bags_screen/components/add_card_bottomsheet.dart';
import 'package:shop_app/screens/bags_screen/components/custom_bottom.dart';
import 'package:shop_app/screens/bags_screen/components/default_appbar.dart';

class AddingShippingAddress extends StatelessWidget {
  const AddingShippingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = DefaultThemeData.light().getTheme.textTheme;
    return Scaffold(
      appBar: defaultAppBar("Adding Shipping Address",null),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(DefaultDimensions.defaultPadding,35,DefaultDimensions.defaultPadding,0),
        child: SingleChildScrollView(
          child: Column(
            children: [

              //text fields
              Container(decoration: BoxDecoration(boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 15,
                  offset: const Offset(0,4)
              ),]),child: informationTextField("Full name", false, textTheme, TextInputType.text, null)),
              const SizedBox(height: 20),
              Container(decoration: BoxDecoration(boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 15,
                  offset: const Offset(0,4)
              ),]),child: informationTextField("Address", false, textTheme, TextInputType.text, null)),
              const SizedBox(height: 20),
              Container(decoration: BoxDecoration(boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 15,
                  offset: const Offset(0,4)
              ),]),child: informationTextField("City", false, textTheme, TextInputType.text, null)),
              const SizedBox(height: 20),
              Container(decoration: BoxDecoration(boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 15,
                  offset: const Offset(0,4)
              ),]),child: informationTextField("State/Province/Region", false, textTheme, TextInputType.text, null)),
              const SizedBox(height: 20),
              Container(decoration: BoxDecoration(boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 15,
                  offset: const Offset(0,4)
              ),]),child: informationTextField("Zip Code (Postal Code)", false, textTheme, TextInputType.number, null)),
              const SizedBox(height: 20),
              Container(decoration: BoxDecoration(boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 15,
                  offset: const Offset(0,4)
              ),]),child: informationTextField("Country)", false, textTheme, TextInputType.text, null)),
              const SizedBox(height: 58),

              const CustomBottom(title: "SAVE ADDRESS",)
            ],
          ),
        ),
      ),
    );
  }
}
