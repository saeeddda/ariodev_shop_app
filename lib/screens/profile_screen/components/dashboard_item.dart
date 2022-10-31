
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardItem extends StatelessWidget {
  const DashboardItem({
    Key? key,
    required this.textTheme,
    required this.title,
    required this.subtitle,
    required this.onTap
  }) : super(key: key);

  final TextTheme textTheme;
  final String title;
  final String subtitle;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,style: textTheme.headline4),
      subtitle: Text(subtitle,style: textTheme.subtitle2),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {
        onTap();
      },
    );
  }
}