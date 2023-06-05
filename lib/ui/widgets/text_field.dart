// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:scissor/ui/widgets/widgets.dart';

class TrimUrlTextfield extends StatefulWidget {
  final String hintText;

  const TrimUrlTextfield({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  State<TrimUrlTextfield> createState() => _TrimUrlTextfieldState();
}

class _TrimUrlTextfieldState extends State<TrimUrlTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: AppColors.deepBlue),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.deepBlue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.deepBlue),
        ),
      ),
    );
  }
}
