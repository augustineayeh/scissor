import 'package:flutter/material.dart';

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
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xff015ee2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        widget.buttonText,
        style: const TextStyle(color: Colors.white, fontSize: 17),
      ),
    );
  }
}