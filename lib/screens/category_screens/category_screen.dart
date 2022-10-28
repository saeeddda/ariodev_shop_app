import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/data/category_data.dart';
import 'package:shop_app/screens/category_screens/components/category_item.dart';
import 'package:shop_app/screens/category_screens/components/offer_box.dart';
import 'package:shop_app/screens/home_screen.dart';

class CategoyScreen extends StatefulWidget {
  const CategoyScreen({super.key});

  @override
  State<CategoyScreen> createState() => _CategoyScreenState();
}

class _CategoyScreenState extends State<CategoyScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.animateTo(2);
  }

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
          bottom: TabBar(
            controller: tabController,
            indicatorColor: DefaultThemeData.light().primaryColor,
            tabs: [
              Tab(
                child: Text(
                  'Women',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Tab(
                child: Text(
                  'Men',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Tab(
                child: Text(
                  'Kids',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: TabBarView(
                controller: tabController,
                physics: const BouncingScrollPhysics(),
                children: [
                  //tab 1
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        DefaultDimensions.defaultPadding,
                        DefaultDimensions.defaultPadding,
                        DefaultDimensions.defaultPadding,
                        0,
                      ),
                      child: Column(
                        children: [
                          const OfferBox(),
                          SizedBox(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height / 1.26,
                            child: ListView.builder(
                              physics: const ClampingScrollPhysics(),
                              itemCount: categories.length,
                              itemBuilder: (context, index) {
                                final category = categories[index];
                                return CategoryListItem(category: category);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //tab 2
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Center(
                          child: Text('tab 2 center'),
                        )
                      ],
                    ),
                  ),
                  //tab 3
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Center(
                          child: Text('tab 3 center'),
                        )
                      ],
                    ),
                  ),
                ],
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
