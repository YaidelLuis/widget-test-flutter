import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget? child;

  const CustomListTile({
    super.key,
    required this.title,
    required this.icon,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      trailing: child,
      onTap: () {},
    );
  }
}
