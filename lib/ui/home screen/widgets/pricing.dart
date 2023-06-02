import 'package:flutter/material.dart';
import 'package:scissor/ui/common/utils.dart';
import 'package:scissor/ui/common/widgets.dart';

//  final String description;
//   final Color borderColor;
//   final Color containerColor;
//   final Color fontColor;
//   final Widget features;
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
          const Offer(
            offerType: 'Basic',
            price: 'Free',
            description: 'Free plan for all users',
            borderColor: deepBlue,
            containerColor: Colors.white,
            fontColor: Colors.black,
            features: SizedBox(
              height: 200,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OfferFeature(
                        feature: 'Unlimited URL Shortening',
                        fontColor: Colors.black),
                    OfferFeature(
                        feature: 'Basic Link Analytics',
                        fontColor: Colors.black),
                    OfferFeature(
                        feature: 'Customizable Short Links',
                        fontColor: Colors.black),
                    OfferFeature(
                        feature: 'Standard Support', fontColor: Colors.black),
                    OfferFeature(
                        feature: 'Ad-supported', fontColor: Colors.black)
                  ]),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Offer(
            offerType: 'Professional',
            price: r'$15/month',
            description: 'Ideal for all business creators',
            borderColor: Color(0xff1e3447),
            containerColor: Color(0xff1e3447),
            fontColor: Colors.white,
            features: SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OfferFeature(
                      feature: 'Enhanced Link Analytics',
                      fontColor: Colors.white),
                  OfferFeature(
                      feature: 'Custom Branded Domains',
                      fontColor: Colors.white),
                  OfferFeature(
                      feature: 'Advanced Link Customization',
                      fontColor: Colors.white),
                  OfferFeature(
                      feature: 'Priority Support', fontColor: Colors.white),
                  OfferFeature(
                      feature: 'Ad-free Experience', fontColor: Colors.white),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Offer(
            offerType: 'Teams',
            price: r'$25/month',
            description: 'Share with up to 10 users',
            borderColor: deepBlue,
            containerColor: Colors.white,
            fontColor: Colors.black,
            features: SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OfferFeature(
                      feature: 'Team Collaboration', fontColor: Colors.black),
                  OfferFeature(
                      feature: 'User Roles and Permission',
                      fontColor: Colors.black),
                  OfferFeature(
                      feature: 'Enhanced Security', fontColor: Colors.black),
                  OfferFeature(feature: 'API Access', fontColor: Colors.black),
                  OfferFeature(
                      feature: 'Dedicated Account Manager',
                      fontColor: Colors.black),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const BlueButton(buttonText: 'Select Pricing'),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
