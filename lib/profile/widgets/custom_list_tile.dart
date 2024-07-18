import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget? child;
  final Color? color;

  const CustomListTile(
      {super.key,
      required this.title,
      required this.icon,
      this.child,
      this.color});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: color),
      ),
      leading: Icon(
        icon,
        color: color,
      ),
      trailing: child,
      onTap: () {},
    );
  }
}
