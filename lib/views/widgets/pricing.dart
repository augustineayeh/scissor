import 'package:flutter/material.dart';
import 'package:scissor/utils.dart';

class Pricing extends StatelessWidget {
  const Pricing({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
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
                    offerFeature('Unlimited URL Shortening', Colors.black),
                    offerFeature('Basic Link Analytics', Colors.black),
                    offerFeature('Customizable Short Links', Colors.black),
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
                  offerFeature('Enhanced Link Analytics', Colors.white),
                  offerFeature('Custom Branded Domains', Colors.white),
                  offerFeature('Advanced Link Customization', Colors.white),
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
                  offerFeature('User Roles and Permission', Colors.black),
                  offerFeature('Enhanced Security', Colors.black),
                  offerFeature('API Access', Colors.black),
                  offerFeature('Dedicated Account Manager', Colors.black),
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
    );
  }
}
