import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/data/product_data.dart';

class ProductCardItem extends StatelessWidget {
  const ProductCardItem(
      {super.key,
      required this.product,
      required this.isDiscounted,
      required this.icon,
      required this.onCardPress,
      required this.onIconPress});

  final Product product;
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
