import 'package:flutter/material.dart';
import 'package:scissor/ui/widgets/widgets.dart';

export 'package:scissor/ui/styles/app_colors.dart';

class BlueButton extends StatefulWidget {
  final String buttonText;
  const BlueButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  State<BlueButton> createState() => _BlueButtonState();
}

class _BlueButtonState extends State<BlueButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          backgroundColor: AppColors.deepBlue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: () {},
      child: Text(
        widget.buttonText,
        style: const TextStyle(color: Colors.white, fontSize: 17),
      ),
    );
  }
}
