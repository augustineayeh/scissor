import 'package:flutter/material.dart';
import 'package:scissor/ui/common/utils.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      width: screenWidth,
      color: const Color(0xffe5f7fd),
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FooterCaption(text: 'Why Scissor ?'),
                footerText('Scissor 101'),
                footerText('Integrations'),
                footerText('Pricing')
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FooterCaption(text: 'Solutions'),
                footerText('Social Media'),
                footerText('Digital Marketing'),
                footerText('Customer Service'),
                footerText('For Developers')
              ],
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FooterCaption(text: 'Resources'),
                footerText('Blog'),
                footerText('Resource Library'),
                footerText('Developers'),
                footerText('App Connectors'),
                footerText('Support'),
                footerText('Trust Center'),
                footerText('Browser'),
                footerText('Mobile app')
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FooterCaption(text: 'Company'),
                footerText('About Scissor'),
                footerText('Careers'),
                footerText('Partners'),
                footerText('Press'),
                footerText('Contact'),
                footerText('Reviews')
              ],
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FooterCaption(text: 'Legal'),
                footerText('Privacy Policy'),
                footerText('Cookie Policy'),
                footerText('Terms of Service'),
                footerText('Acceptable Use Policy'),
                footerText('Code of conduct')
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FooterCaption(text: 'Features'),
                footerText('Branded Links'),
                footerText('Mobile Links'),
                footerText('Campaign'),
                footerText('Management & analytics'),
                footerText('QR Code generation')
              ],
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FooterCaption(text: 'Products'),
                footerText('Link Management'),
                footerText('QR Codes'),
                footerText('Link-in-bio'),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
