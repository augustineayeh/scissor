import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String text;
  final Color color;
  const NavBarItem({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 28, color: color),
    );
  }
}
