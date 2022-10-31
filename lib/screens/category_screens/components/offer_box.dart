import 'package:flutter/material.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';

class OfferBox extends StatelessWidget {
  const OfferBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: DefaultDimensions.defaultPadding),
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
          color: DefaultThemeData.light().hotAndSaleColor,
          borderRadius: BorderRadius.circular(
            DefaultDimensions.defaultWidgetBorderRadius,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(20),
              offset: const Offset(0.0, 1.0),
              blurRadius: 25.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SUMMER SALES',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .apply(color: Colors.white),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Up to 50% off',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .apply(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
