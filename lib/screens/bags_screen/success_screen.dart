import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';
import 'package:shop_app/screens/bags_screen/components/custom_bottom.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = DefaultThemeData.light().getTheme.textTheme;
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/bags.svg"),
                const SizedBox(height: 56),
                Text("Success!",style: textTheme.headline1,),
                const SizedBox(height: 12),
                Text("""Your order will be delivered soon.
Thank you for choosing our app!""",style: textTheme.subtitle1,),


              ],
            ),
          ),
          const Positioned(bottom: 59,left: DefaultDimensions.defaultPadding,right: DefaultDimensions.defaultPadding,child: CustomBottom(title: "CONTINUE SHOPPING",))
        ],
      ),
    );
  }
}
