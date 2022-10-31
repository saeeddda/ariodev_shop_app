import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(19),
      margin: const EdgeInsets.symmetric(vertical: 24),
      width: double.infinity,
      height: 175,
      decoration: BoxDecoration(
          color: DefaultLightColor.whiteColor,
          boxShadow: [ BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
          ),],
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Order №1947034",style: textTheme.headline4),
              Text("05-12-2019",style: textTheme.subtitle2),
            ],),
          const SizedBox(height: 15),
          Row(
            children: [
              Text("Tracking number:",style: textTheme.subtitle2),
              const SizedBox(width: 10),
              Text("IW3475453455",style: textTheme.headline4),
            ],),
          const SizedBox(height: 4),
          Row(
            children: [
              Text("Quantity:",style: textTheme.subtitle2),
              const SizedBox(width: 10),
              Text("3",style: textTheme.headline4),
              const SizedBox(width: 107),
              Text("Total Amount::",style: textTheme.subtitle2),
              const SizedBox(width: 10),
              Text("112\$",style: textTheme.headline4),
            ],),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {},
                  style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(side: const BorderSide(width: 1,color: DefaultLightColor.primaryTextColor) ,borderRadius: BorderRadius.circular(24)))),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text("Details",style: textTheme.subtitle1,),
                  )),
              Text("Delivered",style: textTheme.headline4!.apply(color: DefaultLightColor.successColor),)
            ],),
        ],
      ),
    );
  }
}
