import 'package:flutter/material.dart';
import 'package:scissor/ui/widgets/widgets.dart';

class BlueText extends StatelessWidget {
  final String text;
  const BlueText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: AppColors.deepBlue, fontSize: 20),
    );
  }
}
