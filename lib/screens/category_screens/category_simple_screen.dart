import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/data/category_data.dart';
import 'package:shop_app/screens/home_screen.dart';

class CategoySimpleScreen extends StatelessWidget {
  const CategoySimpleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: DefaultThemeData.light().whiteColor,
          title: Text(
            'Categories',
            style: Theme.of(context).textTheme.headline3,
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.chevronLeft,
              size: DefaultDimensions.defaultSmallIconSize,
              color: DefaultThemeData.light().primaryTextColor,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: DefaultDimensions.defaultSmallIconSize,
                color: DefaultThemeData.light().primaryTextColor,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        DefaultDimensions.defaultPadding,
                        DefaultDimensions.defaultPadding,
                        DefaultDimensions.defaultPadding,
                        0.0,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(
                            Size(
                              MediaQuery.of(context).size.width,
                              DefaultDimensions.defaultButtonHeight,
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('VIEW ALL ITEMS'),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: DefaultDimensions.defaultPadding),
                      child: Text(
                        'Choose category',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Column(
                      children: List.generate(
                        simpleCategories.length,
                        (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: DefaultDimensions.defaultPadding,
                                ),
                                child: Text(
                                  simpleCategories[index].title!,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 80.0),
                  ],
                ),
              ),
            ),
            const Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: ShopBottomNavigationBar(),
            ),
          ],
        ),
      ),
    );
  }
}
