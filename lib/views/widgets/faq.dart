import 'package:flutter/material.dart';
import 'package:scissor/utils.dart';

class FAQ extends StatelessWidget {
  const FAQ({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      color: Colors.white,
      width: screenWidth,
      child: Column(children: [
        const Text(
          'FAQs',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const SizedBox(
          height: 5,
        ),
        createAnsweredFAQ('How does URL shortening work?',
            'URL shortening works by taking a long URL and creating a shorter, condensed version that redirects to the original URL. When a user clicks on the shortened link, they are redirected to the intended destination.'),
        createFAQ(
            'Is it necessary to create an account to use the URL shortening service?'),
        createFAQ('Are the shortened links permanent? Will they expire?'),
        createFAQ(
            'Are there any limitations on the number of URLs I can shorten?'),
        createFAQ(
            'Can I customize the shortened URLs to reflect my brand or content?'),
        createFAQ('Can I track the performance of my shortened URLs?'),
        createFAQ(
            'How secure is the URL shortening service? Are the shortened links protected against spam or malicious activity?'),
        createFAQ('What is a QR code and what can it do?'),
        createFAQ(
            'Is there an API available for integrating the URL shortening service into my own applications or websites?'),
      ]),
    );
  }
}
