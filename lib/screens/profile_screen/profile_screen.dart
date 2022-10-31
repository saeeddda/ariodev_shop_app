import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/screens/profile_screen/components/dashboard_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = DefaultThemeData.light().getTheme.textTheme;
    const bodyMargin = DefaultDimensions.defaultPadding;
    return Scaffold(
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
      backgroundColor: DefaultLightColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(bodyMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My profile",style: textTheme.headline1),
            const SizedBox(height: bodyMargin),
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: ClipRRect(borderRadius: BorderRadius.circular(40),child: Image.asset("assets/images/avatar/avatar-1.png",fit: BoxFit.cover,)),
                ),
                const SizedBox(width: bodyMargin),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Matilda Brown",style: textTheme.headline3),
                    const SizedBox(height: 4),
                    Text("matildabrown@mail.com",style: textTheme.subtitle2),
                  ],
                )
              ],
            ),

            DashboardItem(textTheme: textTheme,title: "My orders",subtitle: "Already have 12 orders",onTap: () {}),
            const Divider(),
            DashboardItem(textTheme: textTheme,title: "Shipping addresses",subtitle: "3 ddresses",onTap: () {}),
            const Divider(),
            DashboardItem(textTheme: textTheme,title: "Payment methods",subtitle: "Visa  **34",onTap: () {}),
            const Divider(),
            DashboardItem(textTheme: textTheme,title: "Promocodes",subtitle: "You have special promocodes",onTap: () {}),
            const Divider(),
            DashboardItem(textTheme: textTheme,title: "My reviews",subtitle: "Reviews for 4 items",onTap: () {}),
            const Divider(),
            DashboardItem(textTheme: textTheme,title: "Settings",subtitle: "Notifications, password",onTap: () {}),
          ],
        ),
      ),
    );
  }
}


