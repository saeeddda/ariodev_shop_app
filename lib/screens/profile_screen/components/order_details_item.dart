import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/config/default_dimensions.dart';

class OrderDetailsItem extends StatelessWidget {
  const OrderDetailsItem({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
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
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset("assets/images/products/product-6.png",fit: BoxFit.cover,)),
            ),
            //information
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16,top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("t-sherit",style: textTheme.headline3,),
                    const SizedBox(height: 4),
                    Text("Mango",style: textTheme.subtitle2,),
                    const SizedBox(height: 9),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text:  TextSpan(
                            text: 'Units: ',
                            style: textTheme.subtitle1,
                            children: <TextSpan>[
                              TextSpan(
                                text: '1',
                                style: textTheme.subtitle2,
                              ),

                            ],

                          ),
                        ),
                        Text("51\$",style: textTheme.headline4),
                      ],
                    )

                  ],
                ),
              ),
            ),
            const SizedBox(width: 16)
          ],
        )
    );
  }
}
