import 'package:flutter/material.dart';
import 'package:scissor/src/views/home%20page/drawer.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              blueText('Log in'),
              const SizedBox(
                width: 20,
              ),
              blueButton('Try for free'),
              const SizedBox(
                width: 20,
              )
            ],
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: Stack(clipBehavior: Clip.none, children: <Widget>[
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Optimize Your Online Experience with Our',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ),
                            TextSpan(
                              text: ' URL Shortening',
                              style: TextStyle(
                                color: Color(0xff015ee2),
                                fontSize: 30,
                              ),
                            ),
                            TextSpan(
                              text: ' Solution',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          bottom: -46,
                          left: 100,
                          child: RotationTransition(
                            turns: const AlwaysStoppedAnimation(55 / 360),
                            child: Image.asset(
                              'assets/stroke.png',
                              height: 80,
                              color: const Color(0xff015ee2),
                            ),
                          ))
                    ]),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Personalize your shortened URLs to align with your brand identity. Utilize custom slugs, branded links, and domain customization options to reinforce your brand presence and enhance user engagement.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [blueButton('Sign Up'), blueText('Learn more')],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Stack(children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        'assets/triangle.png',
                        color: const Color(0xffE2E9F0),
                        height: 200,
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 50,
                      child: Container(
                        width: 360,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color(0xff015ee2),
                            )),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/link-2.png',
                                height: 40,
                              ),
                              Image.asset(
                                'assets/right-arrow.png',
                                color: const Color(0xff015ee2),
                                height: 40,
                              ),
                              const SizedBox(
                                width: 210,
                                child: Text(
                                  'Seamlessly transform your long URLs into concise and shareable links with just few clicks.',
                                  style: TextStyle(fontSize: 18),
                                ),
                              )
                            ]),
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
                ],
              ),
            ),
          )),
    );
  }
}
