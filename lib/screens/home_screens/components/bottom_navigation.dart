import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';

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
