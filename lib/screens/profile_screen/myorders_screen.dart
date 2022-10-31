import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/screens/profile_screen/components/order_list_item.dart';
import 'package:shop_app/screens/profile_screen/components/tag_list_item.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = DefaultThemeData.light().getTheme.textTheme;
    const bodyMargin = DefaultDimensions.defaultPadding;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black),
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
      body: Padding(
        padding: const EdgeInsets.all(bodyMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Orders",style: textTheme.headline2),
            const SizedBox(height: 24),

            //tags list
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return TagListItem(textTheme: textTheme,index: index);
              },),
            ),

            Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return OrderListItem(textTheme: textTheme);
                    },
                )
            )
          ],
        ),
      ),
    );
  }
}


