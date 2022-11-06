import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/screens/bags_screen/components/add_card_bottomsheet.dart';
import 'package:shop_app/screens/bags_screen/components/custom_bottom.dart';

class SetingScreen extends StatelessWidget {
  const SetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = DefaultThemeData.light().getTheme.textTheme;
    const bodyMargin = DefaultDimensions.defaultPadding;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_outlined,
              color: DefaultLightColor.primaryTextColor),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search,
                  color: DefaultLightColor.primaryTextColor))
        ],
      ),
      backgroundColor: DefaultLightColor.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(bodyMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Settings", style: textTheme.headline1),
                const SizedBox(height: 23),
                Text("Personal Information", style: textTheme.headline3),
                const SizedBox(height: 21),
                informationTextField(
                    "Full name", false, textTheme, TextInputType.text, null),
                const SizedBox(height: 24),
                informationTextField("Date of Birth", false, textTheme,
                    TextInputType.datetime, null),
                const SizedBox(height: 55),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Password", style: textTheme.headline2),
                    TextButton(
                        onPressed: () {
                          changePssWordBottomSheet(context);
                        },
                        style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent)),
                        child: Text(
                          "Change",
                          style: textTheme.subtitle1!
                              .apply(color: DefaultLightColor.secondaryTextColor),
                        ))
                  ],
                ),
                informationTextField(
                    "Password", true, textTheme, TextInputType.text, null),
                const SizedBox(height: 55),
                Text(
                  "Notifications",
                  style: textTheme.headline3,
                ),
                const SizedBox(height: 21),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sales", style: textTheme.subtitle1),
                    Expanded(
                        child: SwitchListTile(
                      value: true,
                      activeColor: DefaultLightColor.successColor,
                      activeTrackColor: DefaultLightColor.secondaryTextColor,
                      onChanged: (value) {},
                    ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("New arrivals", style: textTheme.subtitle1),
                    Expanded(
                        child: SwitchListTile(
                      value: false,
                      activeColor: DefaultLightColor.successColor,
                      activeTrackColor: DefaultLightColor.secondaryTextColor,
                      onChanged: (value) {},
                    ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery status changes", style: textTheme.subtitle1),
                    Expanded(
                        child: SwitchListTile(
                      value: false,
                      activeColor: DefaultLightColor.successColor,
                      activeTrackColor: DefaultLightColor.secondaryTextColor,
                      onChanged: (value) {},
                    ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> changePssWordBottomSheet(BuildContext context) {
    final textTheme = DefaultThemeData.light().getTheme.textTheme;
    const bodyMargin = DefaultDimensions.defaultPadding;
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.fromLTRB(bodyMargin, 32, bodyMargin, 0),
          decoration: const BoxDecoration(
            color: DefaultLightColor.backgroundColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(child: Text("Password Change",style: textTheme.headline2)),
              const SizedBox(height: 18),
              // old pass textField
              Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: DefaultLightColor.primaryTextColor.withOpacity(0.1),blurRadius: 10)
                    ]
                  ),
                  child: informationTextField("Old Password", true, textTheme, TextInputType.text, null)
              ),
              TextButton(
                  onPressed: () {

                  },
                  style: ButtonStyle(
                      overlayColor:
                      MaterialStateProperty.all(Colors.transparent)),
                  child: Text(
                    "Forgot Password?",
                    style: textTheme.subtitle2,
                  )),
              const SizedBox(height: 18),
              // new pass textField
              Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: DefaultLightColor.primaryTextColor.withOpacity(0.1),blurRadius: 10)
                      ]
                  ),
                  child: informationTextField("New Password", true, textTheme, TextInputType.text, null)
              ),
              const SizedBox(height: 24),
              Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: DefaultLightColor.primaryTextColor.withOpacity(0.1),blurRadius: 10)
                      ]
                  ),
                  child: informationTextField("Repeat New Password", true, textTheme, TextInputType.text, null)
              ),

              const SizedBox(height: 32),
              const CustomBottom(title: "SAVE PASSWORD")
            ],
          ),
        );
      },
    );
  }
}
