import 'package:flutter/material.dart';
import 'package:scissor/src/views/home%20page/drawer.dart';

Widget createOffer(String offerType, String price, String description,
    Color borderColor, Color containerColor, Color fontColor, Widget features) {
  return Container(
    width: 365,
    padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
    decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        color: containerColor,
        borderRadius: BorderRadius.circular(10)),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        offerType,
        style: TextStyle(color: fontColor, fontSize: 22),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        price,
        style: TextStyle(
            color: fontColor, fontWeight: FontWeight.bold, fontSize: 25),
      ),
      Text(
        description,
        style: TextStyle(color: fontColor, fontSize: 22),
      ),
      const SizedBox(
        height: 5,
      ),
      features
    ]),
  );
}

Widget offerFeature(String feature, Color fontColor) {
  return Row(
    children: [
      Image.asset('assets/check.png', height: 20, color: fontColor),
      const SizedBox(
        width: 10,
      ),
      Text(feature, style: TextStyle(color: fontColor, fontSize: 20))
    ],
  );
}

const Color deepBlue = Color(0xff015ee2);

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
    double screenWidth = MediaQuery.of(context).size.width;
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: Stack(clipBehavior: Clip.none, children: <Widget>[
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            style: TextStyle(
                              fontFamily: 'georgia',
                              color: Colors.black,
                              fontSize: 30,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'Optimize Your Online Experience with Our',
                              ),
                              TextSpan(
                                text: ' URL Shortening',
                                style: TextStyle(
                                  color: Color(0xff015ee2),
                                ),
                              ),
                              TextSpan(
                                text: ' Solution',
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
                    const Text(
                      'Personalize your shortened URLs to align with your brand identity. Utilize custom slugs, branded links, and domain customization options to reinforce your brand presence and enhance user engagement.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [blueButton('Sign Up'), blueText('Learn more')],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: const Color(0xff015ee2),
                              )),
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
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
                ),
                Container(
                  width: screenWidth,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(
                            fontFamily: 'georgia',
                            color: Colors.black,
                            fontSize: 30,
                          ),
                          children: [
                            TextSpan(
                              text: 'A',
                            ),
                            TextSpan(
                              text: ' price perfect',
                              style: TextStyle(
                                color: Color(0xff015ee2),
                              ),
                            ),
                            TextSpan(
                              text: ' for your needs.',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          'From catering for your personal, business, event, socials needs, you can be rest assured we have you in mind in our pricing.',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      createOffer(
                        'Basic',
                        'Free',
                        'Free plan for all users',
                        deepBlue,
                        Colors.white,
                        Colors.black,
                        SizedBox(
                          height: 200,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                offerFeature(
                                    'Unlimited URL Shortening', Colors.black),
                                offerFeature(
                                    'Basic Link Analytics', Colors.black),
                                offerFeature(
                                    'Customizable Short Links', Colors.black),
                                offerFeature('Standard Support', Colors.black),
                                offerFeature('Ad-supported', Colors.black)
                              ]),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      createOffer(
                        'Professional',
                        r'$15/month',
                        'Ideal for all business creators',
                        const Color(0xff1e3447),
                        const Color(0xff1e3447),
                        Colors.white,
                        SizedBox(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              offerFeature(
                                  'Enhanced Link Analytics', Colors.white),
                              offerFeature(
                                  'Custom Branded Domains', Colors.white),
                              offerFeature(
                                  'Advanced Link Customization', Colors.white),
                              offerFeature('Priority Support', Colors.white),
                              offerFeature('Ad-free Experience', Colors.white),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      createOffer(
                        'Teams',
                        r'$25/month',
                        'Share with up to 10 users',
                        deepBlue,
                        Colors.white,
                        Colors.black,
                        SizedBox(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              offerFeature('Team Collaboration', Colors.black),
                              offerFeature(
                                  'User Roles and Permission', Colors.black),
                              offerFeature('Enhanced Security', Colors.black),
                              offerFeature('API Access', Colors.black),
                              offerFeature(
                                  'Dedicated Account Manager', Colors.black),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      blueButton('Select Pricing'),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    color: Color(0xff1e3447),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 40),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Paste URL here...',
                            hintStyle: const TextStyle(color: deepBlue),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: deepBlue),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: deepBlue),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Customize domain',
                            hintStyle: const TextStyle(color: deepBlue),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: deepBlue),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: deepBlue),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Type Alias here',
                            hintStyle: const TextStyle(color: deepBlue),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: deepBlue),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: deepBlue),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        blueButton('Trim URL '),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          textAlign: TextAlign.center,
                          'By clicking TrimURL, I agree to the Terms of Service, Privacy Policy and Use of Cookies.',
                          style: TextStyle(
                              color: deepBlue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
