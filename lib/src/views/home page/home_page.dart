import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget blueButton(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xff015ee2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 17),
      ),
    );
  }

  Widget blueText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Color(0xff015ee2), fontSize: 20),
    );
  }

  Widget navBarItem(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20),
    );
  }

  Widget headingAndDescription(String heading, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 18),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Column(
          children: [Text('vrff v'), Text('vrff v'), Text('vrff v')],
        ),
      ),
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'SCISSOR',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff015ee2),
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          blueText('Log in'),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Drawer()),
                                );
                              },
                              child: blueButton('Try for free')),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      navBarItem('My URLs'),
                      navBarItem('Features'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      navBarItem('Pricing'),
                      navBarItem('Analytics'),
                      navBarItem('FAQs'),
                    ],
                  ),
                  const SizedBox(
                    child: Text(
                      ' Optimize Your Online Experience with Our Advanced URL Shortening Solution',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Personalize your shortened URLs to align with your brand identity. Utilize custom slugs, branded links, and domain customization options to reinforce your brand presence and enhance user engagement.',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Row(
                    children: [blueButton('Sign Up'), blueText('Learn more')],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xff015ee2),
                        )),
                    child: const Row(children: [
                      SizedBox(
                        width: 220,
                        child: Text(
                            'Seamlessly transform your long URLs into concise and shareable links with just few clicks.'),
                      )
                    ]),
                  ),
                  headingAndDescription('URL Shortening',
                      'Scissor allows you to shorten URLs of your business, events. Shorten your URL at scale, URL redirects.'),
                  const SizedBox(
                    height: 30,
                  ),
                  headingAndDescription('Custom URLs',
                      'Scissor allows you to shorten URLs of your business, events. Shorten your URL at scale, URL redirects.'),
                  const SizedBox(
                    height: 30,
                  ),
                  headingAndDescription('QR Codes',
                      'Generate QR codes to your business, events. Bring your audience and customers to your doorstep with this scan and go solution.'),
                  const SizedBox(
                    height: 30,
                  ),
                  headingAndDescription('Data Analytics',
                      'Receive data on the usage of either your shortened URL, custom URLs or generated QR codes. Embedded to monitor progress.'),
                ],
              ),
            ),
          )),
    );
  }
}
