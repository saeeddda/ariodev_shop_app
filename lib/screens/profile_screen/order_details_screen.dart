import 'package:flutter/material.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/screens/bags_screen/components/default_appbar.dart';
import 'package:shop_app/screens/profile_screen/components/order_details_item.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = DefaultThemeData.light().getTheme.textTheme;
    const bodyMargin = DefaultDimensions.defaultPadding;
    return Scaffold(
      appBar: defaultAppBar(
          "Order Details",
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search,
                  color: DefaultLightColor.primaryTextColor))),
      body: Padding(
        padding: const EdgeInsets.all(bodyMargin),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // information
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Order №1947034", style: textTheme.headline4),
                Text("05-12-2019", style: textTheme.subtitle2),
              ],
            ),
            const SizedBox(height: bodyMargin),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Tracking number:", style: textTheme.subtitle2),
                const SizedBox(width: 10),
                Text("IW3475453455", style: textTheme.headline4),
                const SizedBox(width: 10),
                Text(
                  "Delivered",
                  style: textTheme.headline4!
                      .apply(color: DefaultLightColor.successColor),
                )
              ],
            ),
            const SizedBox(height: bodyMargin),

            //list view
            Text("3 items", style: textTheme.headline4),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return OrderDetailsItem(textTheme: textTheme);
                },
              ),
            ),
            const SizedBox(height: 14),

            Text("Order information", style: textTheme.headline3),
            const SizedBox(height: bodyMargin),
            Row(
              children: [
                Text(
                  "Summary:",
                  style: textTheme.subtitle2!.apply(fontSizeFactor: 1.2),
                ),
                const SizedBox(width: 10),
                Expanded(
                    child: Text(
                  "3 Newbridge Court ,Chino Hills, CA 91709, United States \$",
                  style: textTheme.headline4,
                )),
              ],
            ),
            const SizedBox(height: 46),
            Row(
              children: [
                Text(
                  "Payment method:",
                  style: textTheme.subtitle2!.apply(fontSizeFactor: 1.2),
                ),
                const SizedBox(width: 10),
                Image.asset("assets/icons/master.png", width: 64),
                const SizedBox(width: 4),
                Text(
                  "**** **** **** 3947",
                  style: textTheme.headline4,
                )
              ],
            ),
            const SizedBox(height: 27),
            Row(
              children: [
                Text(
                  "Delivery method:",
                  style: textTheme.subtitle2!.apply(fontSizeFactor: 1.2),
                ),
                const SizedBox(width: 10),
                Text(
                  "FedEx, 3 days, 15\$",
                  style: textTheme.headline4,
                )
              ],
            ),
            const SizedBox(height: 27),
            Row(
              children: [
                Text(
                  "Discount:",
                  style: textTheme.subtitle2!.apply(fontSizeFactor: 1.2),
                ),
                const SizedBox(width: 10),
                Text(
                  "10%, Personal promo code",
                  style: textTheme.headline4,
                )
              ],
            ),
            const SizedBox(height: 27),
            Row(
              children: [
                Text(
                  "Total Amount:",
                  style: textTheme.subtitle2!.apply(fontSizeFactor: 1.2),
                ),
                const SizedBox(width: 10),
                Text(
                  "133\$",
                  style: textTheme.headline4,
                )
              ],
            ),
            const SizedBox(height: 34),

            //batons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 160,
                  height: 36,
                  child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1,
                                      color:
                                          DefaultLightColor.primaryTextColor),
                                  borderRadius: BorderRadius.circular(24)))),
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Text(
                          "Details",
                          style: textTheme.subtitle1,
                        ),
                      )),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)))),
                    child: const Text("Leave feedback"))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
