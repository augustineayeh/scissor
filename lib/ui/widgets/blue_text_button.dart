import 'package:flutter/material.dart';
import 'package:scissor/ui/widgets/widgets.dart';

export 'package:scissor/ui/styles/app_colors.dart';

class BlueTextButton extends StatelessWidget {
  final String text;
  const BlueTextButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(color: AppColors.deepBlue, fontSize: 22),
        ));
  }
}
