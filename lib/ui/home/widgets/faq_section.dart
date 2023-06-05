// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:scissor/ui/widgets/widgets.dart';

class FAQSection extends StatelessWidget {
  const FAQSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      color: Colors.white,
      width: screenWidth,
      child: const Column(children: [
        Text(
          'FAQs',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        SizedBox(
          height: 5,
        ),
        FAQ(
            question: 'How does URL shortening work?',
            answer:
                'URL shortening works by taking a long URL and creating a shorter, condensed version that redirects to the original URL. When a user clicks on the shortened link, they are redirected to the intended destination.'),
        FAQ(
            question:
                'Is it necessary to create an account to use the URL shortening service?'),
        FAQ(question: 'Are the shortened links permanent? Will they expire?'),
        FAQ(
            question:
                'Are there any limitations on the number of URLs I can shorten?'),
        FAQ(
            question:
                'Can I customize the shortened URLs to reflect my brand or content?'),
        FAQ(question: 'Can I track the performance of my shortened URLs?'),
        FAQ(
            question:
                'How secure is the URL shortening service? Are the shortened links protected against spam or malicious activity?'),
        FAQ(question: 'What is a QR code and what can it do?'),
        FAQ(
            question:
                'Is there an API available for integrating the URL shortening service into my own applications or websites?'),
      ]),
    );
  }
}
