import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  final String text;
  const FooterText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Text(
        text,
      ),
    );
  }
}
