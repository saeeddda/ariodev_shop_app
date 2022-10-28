import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/data/product_data.dart';

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
                              style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all(
                                  const Size(160.0, 36.0),
                                ),
                              ),
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

class ShopBottomNavigationBar extends StatelessWidget {
  const ShopBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      decoration: BoxDecoration(
        color: DefaultThemeData.light().whiteColor,
        borderRadius: const BorderRadius.only(
          topLeft:
              Radius.circular(DefaultDimensions.defaultNavBottomBorderRadius),
          topRight:
              Radius.circular(DefaultDimensions.defaultNavBottomBorderRadius),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home,
                color: DefaultThemeData.light().primaryColor,
              ),
              const SizedBox(
                height: DefaultDimensions.defaultPadding / 4,
              ),
              Text(
                'Home',
                style: Theme.of(context)
                    .textTheme
                    .copyWith(
                        caption: TextStyle(
                      color: DefaultThemeData.light().primaryColor,
                      fontSize: 10.0,
                      fontWeight: FontWeight.w700,
                    ))
                    .caption,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(FontAwesomeIcons.cartShopping),
              const SizedBox(
                height: DefaultDimensions.defaultPadding / 4,
              ),
              Text(
                'Shop',
                style: Theme.of(context)
                    .textTheme
                    .copyWith(
                        caption: const TextStyle(
                      fontSize: 10.0,
                    ))
                    .caption,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(FontAwesomeIcons.bagShopping),
              const SizedBox(
                height: DefaultDimensions.defaultPadding / 4,
              ),
              Text(
                'Bag',
                style: Theme.of(context)
                    .textTheme
                    .copyWith(
                        caption: const TextStyle(
                      fontSize: 10.0,
                    ))
                    .caption,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(FontAwesomeIcons.solidHeart),
              const SizedBox(
                height: DefaultDimensions.defaultPadding / 4,
              ),
              Text(
                'Favorites',
                style: Theme.of(context)
                    .textTheme
                    .copyWith(
                        caption: const TextStyle(
                      fontSize: 10.0,
                    ))
                    .caption,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(FontAwesomeIcons.solidUser),
              const SizedBox(
                height: DefaultDimensions.defaultPadding / 4,
              ),
              Text(
                'Profile',
                style: Theme.of(context)
                    .textTheme
                    .copyWith(
                        caption: const TextStyle(
                      fontSize: 10.0,
                    ))
                    .caption,
              ),
            ],
          ),
        ],
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

class ProductCardItem extends StatelessWidget {
  const ProductCardItem(
      {super.key,
      required this.product,
      required this.isDiscounted,
      required this.icon,
      required this.onCardPress,
      required this.onIconPress});

  final ProductModel product;
  final bool isDiscounted;
  final IconData icon;
  final Function() onCardPress;
  final Function() onIconPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardPress,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 150.0,
                    height: 185.0,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          DefaultDimensions.defaultImageBorderRadius,
                        ),
                        child: Image.asset(
                          product.image!,
                          fit: BoxFit.cover,
                        )),
                  ),
                  isDiscounted
                      ? Positioned(
                          top: 8.0,
                          left: 10.0,
                          child: Container(
                            width: 40.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                              color: DefaultThemeData.light().hotAndSaleColor,
                              borderRadius: BorderRadius.circular(
                                DefaultDimensions.defaultWidgetBorderRadius * 2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "-${product.discountPercent.toString()}%",
                                style: Theme.of(context)
                                    .textTheme
                                    .copyWith(
                                        caption: TextStyle(
                                      color:
                                          DefaultThemeData.light().whiteColor,
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w600,
                                    ))
                                    .caption,
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
              const SizedBox(height: DefaultDimensions.defaultPadding / 8),
              Row(
                children: [
                  RatingBar(
                      glow: false,
                      tapOnlyMode: true,
                      initialRating: product.rate!,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 14.0,
                      updateOnDrag: false,
                      itemPadding: const EdgeInsets.all(
                          DefaultDimensions.defaultPadding / 8),
                      ratingWidget: RatingWidget(
                        full: const Icon(Icons.star, color: Colors.amber),
                        half: const Icon(Icons.star_half, color: Colors.amber),
                        empty: Icon(Icons.star,
                            color: DefaultThemeData.light().secondaryTextColor),
                      ),
                      onRatingUpdate: (value) {}),
                  Text(
                    '(${product.rate})',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
              const SizedBox(height: DefaultDimensions.defaultPadding / 8),
              Text(
                product.category!,
                style: Theme.of(context).textTheme.caption,
              ),
              const SizedBox(height: DefaultDimensions.defaultPadding / 8),
              Text(
                product.title!,
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: DefaultDimensions.defaultPadding / 8),
              Row(
                children: [
                  isDiscounted
                      ? Text(
                          '${product.discountPrice.toString()}\$',
                          style: Theme.of(context)
                              .textTheme
                              .copyWith(
                                  subtitle1: TextStyle(
                                color:
                                    DefaultThemeData.light().secondaryTextColor,
                                fontWeight: FontWeight.w500,
                              ))
                              .subtitle1,
                        )
                      : const SizedBox(),
                  Text(
                    '${product.price.toString()}\$',
                    style: Theme.of(context)
                        .textTheme
                        .copyWith(
                            subtitle1: TextStyle(
                          color: isDiscounted
                              ? DefaultThemeData.light().primaryColor
                              : DefaultThemeData.light().primaryTextColor,
                          fontWeight: FontWeight.w500,
                        ))
                        .subtitle1,
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            right: 2.0,
            bottom: 63.0,
            child: Container(
              width: 36.0,
              height: 36.0,
              decoration: BoxDecoration(
                color: DefaultThemeData.light().whiteColor,
                borderRadius: BorderRadius.circular(
                    DefaultDimensions.defaultImageBorderRadius * 10),
              ),
              child: IconButton(
                onPressed: onIconPress,
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: Icon(
                  icon,
                  size: 12.0,
                  color: DefaultThemeData.light().secondaryTextColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
