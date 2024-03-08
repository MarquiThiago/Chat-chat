import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({
    required this.title,
    required this.icon,
    this.onTap,
    super.key,
  });

  final String title;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}
