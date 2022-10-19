// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/screens/bags_screen/components/bag_item.dart';
import 'package:shop_app/screens/bags_screen/components/bottom_navigation.dart';
import 'package:shop_app/screens/bags_screen/components/offer_list_item.dart';
import 'package:shop_app/screens/bags_screen/components/offer_textfield.dart';

class MyBagScreen extends StatelessWidget {
  const MyBagScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = DefaultThemeData.light().getTheme.textTheme;
    return Scaffold(
      backgroundColor: DefaultLightColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: DefaultDimensions.defaultPadding),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 32,
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: DefaultDimensions.defaultPadding),
              child: Text(
                "My Bag",
                style: textTheme.headline1,
              ),
            ),
            const SizedBox(height: 32),
            //Bag List
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const BagItemWidget();
                },
              ),
            ),

            //TextField
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  DefaultDimensions.defaultPadding,
                  32,
                  DefaultDimensions.defaultPadding,
                  0),
              child: OffTextField(
                onPress: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: DefaultDimensions.defaultPadding,
                            vertical: 52),
                        width: double.infinity,
                        height: 464,
                        decoration: const BoxDecoration(
                            color: DefaultLightColor.backgroundColor,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(34),
                                topLeft: Radius.circular(34))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            OffTextField(
                              onPress: () => debugPrint("refresh list"),
                            ),
                            const SizedBox(height: 32),
                            Text(
                              "Your Promo Codes",
                              style: textTheme.headline2,
                            ),
                            const SizedBox(height: 32),
                            Expanded(
                              child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return const OfferListItem();
                                },
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),

            //total price txt
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: DefaultDimensions.defaultPadding, vertical: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total amount:",
                    style: textTheme.subtitle1!
                        .apply(color: DefaultLightColor.secondaryTextColor),
                  ),
                  Text(
                    "124 \$",
                    style: textTheme.headline3,
                  ),
                ],
              ),
            ),

            //check out btn
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: DefaultDimensions.defaultPadding),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          DefaultLightColor.primaryColor),
                      minimumSize: MaterialStateProperty.all(
                          const Size(double.infinity, 48)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)))),
                  child: const Text("CHECK OUT")),
            )
          ],
        ),
      ),
    );
  }
}
