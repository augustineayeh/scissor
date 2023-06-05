import 'package:flutter/material.dart';
import 'package:scissor/ui/widgets/text_field.dart';
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
        child: const Column(
          children: [
            TrimUrlTextfield(
              hintText: 'Paste URL here...',
            ),
            SizedBox(
              height: 20,
            ),
            TrimUrlTextfield(hintText: 'Customize domain'),
            SizedBox(
              height: 20,
            ),
            TrimUrlTextfield(hintText: 'Type Alias here'),
            SizedBox(
              height: 20,
            ),
            BlueButton(buttonText: 'Trim URL '),
            SizedBox(
              height: 20,
            ),
            Text(
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
