
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';
import 'package:shop_app/config/default_theme_data.dart';

class BagItemWidget extends StatelessWidget {
  const BagItemWidget({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final textTheme = DefaultThemeData.light().getTheme.textTheme;
    return Container(
        margin: const EdgeInsets.all(DefaultDimensions.defaultPadding),
        width: double.infinity,
        height: 104,
        decoration: BoxDecoration(
            color: DefaultLightColor.whiteColor,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Row(
          children: [
            //image
            SizedBox(
              width: 100,
              child: Image.asset("assets/images/products/product-1.png",fit: BoxFit.cover,),
            ),
            //information
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16,top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title ** more vert icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("t-sherit",style: textTheme.headline3,),
                        const Icon(Icons.more_vert,color: DefaultLightColor.secondaryTextColor,)
                      ],
                    ),
                    //size && color txt
                    Row(children: [
                      Text("color :",style: textTheme.subtitle1,),
                      Text(" red",style: textTheme.subtitle2,),
                      const SizedBox(width: 16,),
                      Text("size :",style: textTheme.subtitle1,),
                      Text(" M",style: textTheme.subtitle2,),
                    ],),
                    const SizedBox(height: 12,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          padding: const EdgeInsets.only(bottom: 18),
                          decoration:  BoxDecoration(
                              color: DefaultLightColor.whiteColor,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 8,
                                    offset: const Offset(0,4)
                                ),
                              ]
                          ),
                          child:  const Icon(Icons.minimize),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("2",style: textTheme.subtitle1,),
                        ),
                        Container(
                          width: 36,
                          height: 36,
                          decoration:  BoxDecoration(
                              color: DefaultLightColor.whiteColor,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 8,
                                    offset: const Offset(0,4)
                                ),
                              ]
                          ),
                          child:  const Icon(Icons.add),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: Text("56 \$",style: textTheme.headline4),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}