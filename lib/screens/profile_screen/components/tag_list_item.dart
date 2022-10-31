import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/config/default_colors.dart';

class TagListItem extends StatelessWidget {
  const TagListItem({
    Key? key,
    required this.textTheme,
    required this.index
  }) : super(key: key);

  final TextTheme textTheme;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 34),
      decoration: BoxDecoration(
          color: index ==0 ?Colors.black : null,
          borderRadius: BorderRadius.circular(29)
      ),
      child: Center(child: Text("Delivered",style: textTheme.subtitle1!.apply(color: index == 0 ? DefaultLightColor.whiteColor : null),)),
    );
  }
}
