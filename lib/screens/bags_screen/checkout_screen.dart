import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/screens/bags_screen/components/default_appbar.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = DefaultThemeData.light().getTheme.textTheme;
    const bodyMargin = DefaultDimensions.defaultPadding;
    return Scaffold(
      backgroundColor: DefaultLightColor.backgroundColor,
      appBar: defaultAppBar("Checkout"),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(bodyMargin, 32, bodyMargin, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //address card
            Text("Shipping address", style: textTheme.headline1),
            const SizedBox(
              height: 22,
            ),
            Container(
              width: double.infinity,
              height: 108,
              decoration: BoxDecoration(
                  color: DefaultLightColor.whiteColor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 25,
                        offset: const Offset(0, 1)),
                  ]),
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Jane Doe", style: textTheme.headline4),
                      TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(Colors.transparent)
                          ),
                          child: Text(
                            "Change",
                            style: textTheme.subtitle1!
                                .apply(color: DefaultLightColor.primaryColor),
                          ))
                    ],
                  ),
                  const SizedBox(height: 8),
                  Expanded(child: Text("3 Newbridge Court Chino Hills, CA 91709, United States",style: textTheme.subtitle1,))
                ],
              ),
            ),

            const SizedBox(height: 57),

            // card number
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Payment", style: textTheme.headline2),
                TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.transparent)
                    ),
                    child: Text(
                      "Change",
                      style: textTheme.subtitle1!
                          .apply(color: DefaultLightColor.primaryColor),
                    ))
              ],
            ),
            Row(
              children: [
                Container(
                  width: 64,
                  height: 38,
                  decoration: BoxDecoration(
                      color: DefaultLightColor.whiteColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 25,
                            offset: const Offset(0, 1)),
                      ]),
                  child: Image.asset("assets/icons/master.png"),
                ),
                const SizedBox(width: 17),
                Text("**** **** **** 3947",style: textTheme.subtitle2,)
              ],
            ),

            // post cards
            const SizedBox(height: 50),
            Text("Delivery method", style: textTheme.headline2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 72,
                  margin: const EdgeInsets.only(top: 21,right: 22),
                  padding: const EdgeInsets.fromLTRB(bodyMargin, 4, bodyMargin, 0),
                  decoration: BoxDecoration(
                      color: DefaultLightColor.whiteColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 25,
                            offset: const Offset(0, 1)),
                      ]),
                  child: Column(
                    children: [
                      Image.asset("assets/icons/post.png"),
                      const SizedBox(height: 2),
                      Text("2-3 days",style: textTheme.subtitle1!.apply(color: DefaultLightColor.secondaryTextColor))
                    ],
                  )
                ),
                Container(
                  width: 100,
                  height: 72,
                  margin: const EdgeInsets.only(top: 21,right: 22),
                  padding: const EdgeInsets.fromLTRB(bodyMargin, 4, bodyMargin, 0),
                  decoration: BoxDecoration(
                      color: DefaultLightColor.whiteColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 25,
                            offset: const Offset(0, 1)),
                      ]),
                  child: Column(
                    children: [
                      Image.asset("assets/icons/post.png"),
                      const SizedBox(height: 2),
                      Text("2-3 days",style: textTheme.subtitle1!.apply(color: DefaultLightColor.secondaryTextColor))
                    ],
                  )
                ),
                Container(
                  width: 100,
                  height: 72,
                  margin: const EdgeInsets.only(top: 21,right: 22),
                  padding: const EdgeInsets.fromLTRB(bodyMargin, 4, bodyMargin, 0),
                  decoration: BoxDecoration(
                      color: DefaultLightColor.whiteColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 25,
                            offset: const Offset(0, 1)),
                      ]),
                  child: Column(
                    children: [
                      Image.asset("assets/icons/post.png"),
                      const SizedBox(height: 2),
                      Text("2-3 days",style: textTheme.subtitle1!.apply(color: DefaultLightColor.secondaryTextColor))
                    ],
                  )
                ),
              ],
            ),
            const SizedBox(height: 52),

            //payment information
            Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Order:" , style: textTheme.subtitle1!.apply(color: DefaultLightColor.secondaryTextColor),),
                  Text("124 \$",style: textTheme.headline3,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery:" , style: textTheme.subtitle1!.apply(color: DefaultLightColor.secondaryTextColor),),
                  Text("15 \$",style: textTheme.headline3,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Summary:" , style: textTheme.headline3!.apply(color: DefaultLightColor.secondaryTextColor),),
                  Text("127 \$",style: textTheme.headline3,),
                ],
              ),
            ),

            //SUBMIT ORDER btn
            Padding(
              padding: const EdgeInsets.only(top: 26),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(DefaultLightColor.primaryColor),
                      minimumSize: MaterialStateProperty.all(const Size(double.infinity, 48)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))
                  ),
                  child:const Text("SUBMIT ORDER")),
            )
          ],
        ),
      ),
    );
  }


}
