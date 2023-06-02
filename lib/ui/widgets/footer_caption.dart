import 'package:flutter/material.dart';

class FooterCaption extends StatelessWidget {
  final String caption;
  const FooterCaption({
    Key? key,
    required this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Text(
        caption,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
