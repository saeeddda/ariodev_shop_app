import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/screens/bags_screen/components/default_appbar.dart';

class AddResScreen extends StatelessWidget {
  const AddResScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        backgroundColor: DefaultLightColor.primaryTextColor,
        child: const Icon(
          Icons.add,
          size: 48,
        ),
      ),
      appBar: defaultAppBar("Shipping Addresses"),
      body: Column(
        children: [
          const SizedBox(height: 24),
          Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  TextTheme textTheme = DefaultThemeData.light().getTheme.textTheme;
                return Container(
                  margin: const EdgeInsets.fromLTRB(DefaultDimensions.defaultPadding,24,DefaultDimensions.defaultPadding,0),
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    color: DefaultLightColor.whiteColor,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0,4)
                      ),
                    ]
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Jane Doe",style: textTheme.headline4,),
                          TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(Colors.transparent)
                              ),
                              child: Text(
                                "Edit",
                                style: textTheme.subtitle1!
                                    .apply(color: DefaultLightColor.primaryColor),
                              ))
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text("3 Newbridge Court Chino Hills, CA 91709, United States",style: textTheme.subtitle1,),
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
                            "Use as the shipping address",
                            style: textTheme.subtitle1,
                          )
                        ],
                      )
                    ],
                  ),
                );
              },)
          ),
          const SizedBox(height: 84),
        ],
      ),
    );
  }
}
