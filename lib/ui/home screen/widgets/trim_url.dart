import 'package:flutter/material.dart';
import 'package:scissor/ui/widgets/widgets.dart';

class TrimURL extends StatelessWidget {
  const TrimURL({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
      width: screenWidth,
      decoration: const BoxDecoration(
        color: AppColors.violet,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Paste URL here...',
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
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Customize domain',
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
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Type Alias here',
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
            ),
            const SizedBox(
              height: 20,
            ),
            const BlueButton(buttonText: 'Trim URL '),
            const SizedBox(
              height: 20,
            ),
            const Text(
              textAlign: TextAlign.center,
              'By clicking TrimURL, I agree to the Terms of Service, Privacy Policy and Use of Cookies.',
              style: TextStyle(
                  color: AppColors.deepBlue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
