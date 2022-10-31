import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/data/product_data.dart';
import 'package:shop_app/screens/home_screens/components/bottom_navigation.dart';
import 'package:shop_app/screens/home_screens/components/product_card_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 70.0),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 536.0,
                        foregroundDecoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withAlpha(180),
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/other/Big Banner.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        bottom: 30.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fashion',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .apply(color: Colors.white)
                                  .copyWith(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 48.0,
                                  ),
                            ),
                            Text(
                              'sale',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .apply(color: Colors.white)
                                  .copyWith(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 48.0,
                                  ),
                            ),
                            const SizedBox(height: 16.0),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Check'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  //title
                  Padding(
                    padding: const EdgeInsets.only(
                      left: DefaultDimensions.defaultPadding,
                      right: DefaultDimensions.defaultPadding / 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sale',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            Text(
                              'Super summer sale',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View all',
                            style: Theme.of(context)
                                .textTheme
                                .copyWith(
                                  caption: const TextStyle(
                                      color:
                                          DefaultLightColor.primaryTextColor),
                                )
                                .caption,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //prudoct carousel
                  const SizedBox(
                    height: 280.0,
                    child: DiscountedProductCard(),
                  ),
                  const SizedBox(height: 30.0),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200.0,
                        foregroundDecoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withAlpha(180),
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/other/pexels-photo-911677.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        bottom: 30.0,
                        child: Text(
                          'Street clothes',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .apply(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  //title
                  Padding(
                    padding: const EdgeInsets.only(
                      left: DefaultDimensions.defaultPadding,
                      right: DefaultDimensions.defaultPadding / 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'New',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            Text(
                              'You’ve never seen it before!',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View all',
                            style: Theme.of(context)
                                .textTheme
                                .copyWith(
                                  caption: const TextStyle(
                                      color:
                                          DefaultLightColor.primaryTextColor),
                                )
                                .caption,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //prudoct carousel
                  const SizedBox(
                    height: 280.0,
                    child: NewProductCard(),
                  ),
                  const SizedBox(height: 30.0),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 366.0,
                        foregroundDecoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withAlpha(180),
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/other/image 4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 20.0,
                        bottom: 30.0,
                        child: Text(
                          'New collection',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .apply(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 186.0,
                              color: Colors.white,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Summer',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .apply(
                                            color: DefaultThemeData.light()
                                                .primaryColor,
                                          ),
                                    ),
                                    Text(
                                      'sale',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .apply(
                                            color: DefaultThemeData.light()
                                                .primaryColor,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 180.0,
                                  foregroundDecoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.black.withAlpha(180),
                                        Colors.transparent,
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.center,
                                    ),
                                  ),
                                  child: Image.asset(
                                    'assets/images/other/image 2-2.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  left: 20.0,
                                  bottom: 30.0,
                                  child: Text(
                                    'Black',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .apply(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 366.0,
                            foregroundDecoration: BoxDecoration(
                              backgroundBlendMode: BlendMode.softLight,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black.withAlpha(80),
                                  Colors.black.withAlpha(80),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/other/image 2-1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Men,s',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .apply(color: Colors.white),
                                  ),
                                  Text(
                                    'hoodies',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .apply(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ShopBottomNavigationBar(),
            ),
          ],
        ),
      ),
    );
  }
}

class NewProductCard extends StatelessWidget {
  const NewProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: normalProductList.length,
      itemBuilder: ((context, index) {
        final ProductModel product = normalProductList[index];
        return Padding(
          padding: EdgeInsets.fromLTRB(
            index == 0
                ? DefaultDimensions.defaultPadding
                : DefaultDimensions.defaultItemPadding,
            DefaultDimensions.defaultItemPadding,
            index == discountedProductList.length - 1
                ? DefaultDimensions.defaultPadding
                : DefaultDimensions.defaultItemPadding,
            DefaultDimensions.defaultItemPadding,
          ),
          child: ProductCardItem(
            product: product,
            onCardPress: () {},
            onIconPress: () {},
            icon: FontAwesomeIcons.heart,
            isDiscounted: false,
          ),
        );
      }),
    );
  }
}

class DiscountedProductCard extends StatelessWidget {
  const DiscountedProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: discountedProductList.length,
      itemBuilder: ((context, index) {
        final ProductModel product = discountedProductList[index];
        return Padding(
          padding: EdgeInsets.fromLTRB(
            index == 0
                ? DefaultDimensions.defaultPadding
                : DefaultDimensions.defaultItemPadding,
            DefaultDimensions.defaultItemPadding,
            index == discountedProductList.length - 1
                ? DefaultDimensions.defaultPadding
                : DefaultDimensions.defaultItemPadding,
            DefaultDimensions.defaultItemPadding,
          ),
          child: ProductCardItem(
            product: product,
            onCardPress: () {},
            onIconPress: () {},
            icon: FontAwesomeIcons.heart,
            isDiscounted: true,
          ),
        );
      }),
    );
  }
}
