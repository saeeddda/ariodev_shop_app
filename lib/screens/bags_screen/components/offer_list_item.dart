
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_theme_data.dart';

class OfferListItem extends StatelessWidget {
  const OfferListItem({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final textTheme = DefaultThemeData.light().getTheme.textTheme;
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: DefaultLightColor.whiteColor,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0,4)
            ),
          ],
          borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: [

          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8) , bottomLeft: Radius.circular(8) ),
              color: DefaultLightColor.primaryColor,
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Personal offer",style: textTheme.headline3,),
                  const SizedBox(height: 4),
                  Text("mypromocode2020",style: textTheme.subtitle1!.apply(fontSizeFactor: 0.8),),
                ],
              ),
            ),
          ),

          Column(
            children: [
              const SizedBox(height: 6,),
               Text("6 days remaining",style: textTheme.subtitle2),
              const SizedBox(height:2),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(DefaultLightColor.primaryColor),
                      minimumSize: MaterialStateProperty.all(const Size(93, 36)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))
                  ),
                  child:const Text("Apply"))
            ],
          ),
          const SizedBox(width: 8,),
        ],
      ),
    );
  }
}
