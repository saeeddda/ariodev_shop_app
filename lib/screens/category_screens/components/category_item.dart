import 'package:flutter/material.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/data/category_data.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: DefaultDimensions.defaultPadding),
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.white,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: DefaultDimensions.defaultPadding * 1.5),
              child: Text(
                category.title!,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Image.asset(category.image!),
          ],
        ),
      ),
    );
  }
}
