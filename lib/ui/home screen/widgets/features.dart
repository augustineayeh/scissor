import 'package:flutter/material.dart';
import 'package:scissor/ui/common/utils.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(children: [
        Stack(children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(-15 / 360),
              child: Image.asset(
                'assets/triangle.png',
                color: const Color(0xffE2E9F0),
                height: 250,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 80,
            child: Container(
              width: 360,
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xff015ee2),
                  )),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Image.asset(
                      'assets/link-2.png',
                      height: 40,
                    ),
                    Image.asset(
                      'assets/link-2.png',
                      height: 40,
                    ),
                    Image.asset(
                      'assets/link-2.png',
                      height: 40,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/right-arrow.png',
                      color: const Color(0xff015ee2),
                      height: 40,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/link-2.png',
                      height: 40,
                    ),
                  ]),
                  const Text(
                    textAlign: TextAlign.center,
                    'Seamlessly transform your long URLs into concise and shareable links with just few clicks.',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ]),
        const SizedBox(
          height: 25,
        ),
        headingAndDescription('URL Shortening',
            'Scissor allows you to shorten URLs of your business, events. Shorten your URL at scale, URL redirects.'),
        const SizedBox(
          height: 25,
        ),
        headingAndDescription('Custom URLs',
            'Scissor allows you to shorten URLs of your business, events. Shorten your URL at scale, URL redirects.'),
        const SizedBox(
          height: 25,
        ),
        headingAndDescription('QR Codes',
            'Generate QR codes to your business, events. Bring your audience and customers to your doorstep with this scan and go solution.'),
        const SizedBox(
          height: 25,
        ),
        headingAndDescription('Data Analytics',
            'Receive data on the usage of either your shortened URL, custom URLs or generated QR codes. Embedded to monitor progress.'),
        const SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
