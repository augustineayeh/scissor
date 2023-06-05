import 'package:flutter/material.dart';
import 'package:scissor/ui/widgets/widgets.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      width: screenWidth,
      color: AppColors.lightBlue,
      child: const Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FooterCaption(caption: 'Why Scissor ?'),
                FooterText(text: 'Scissor 101'),
                FooterText(text: 'Integrations'),
                FooterText(text: 'Pricing')
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FooterCaption(caption: 'Solutions'),
                FooterText(text: 'Social Media'),
                FooterText(text: 'Digital Marketing'),
                FooterText(text: 'Customer Service'),
                FooterText(text: 'For Developers')
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FooterCaption(caption: 'Resources'),
                FooterText(text: 'Blog'),
                FooterText(text: 'Resource Library'),
                FooterText(text: 'Developers'),
                FooterText(text: 'App Connectors'),
                FooterText(text: 'Support'),
                FooterText(text: 'Trust Center'),
                FooterText(text: 'Browser'),
                FooterText(text: 'Mobile app')
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FooterCaption(caption: 'Company'),
                FooterText(text: 'About Scissor'),
                FooterText(text: 'Careers'),
                FooterText(text: 'Partners'),
                FooterText(text: 'Press'),
                FooterText(text: 'Contact'),
                FooterText(text: 'Reviews')
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FooterCaption(caption: 'Legal'),
                FooterText(text: 'Privacy Policy'),
                FooterText(text: 'Cookie Policy'),
                FooterText(text: 'Terms of Service'),
                FooterText(text: 'Acceptable Use Policy'),
                FooterText(text: 'Code of conduct')
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FooterCaption(caption: 'Features'),
                FooterText(text: 'Branded Links'),
                FooterText(text: 'Mobile Links'),
                FooterText(text: 'Campaign'),
                FooterText(text: 'Management & analytics'),
                FooterText(text: 'QR Code generation')
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FooterCaption(caption: 'Products'),
                FooterText(text: 'Link Management'),
                FooterText(text: 'QR Codes'),
                FooterText(text: 'Link-in-bio'),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
