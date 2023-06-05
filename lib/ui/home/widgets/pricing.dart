import 'package:flutter/material.dart';
import 'package:scissor/ui/widgets/widgets.dart';

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
                  style: TextStyle(color: AppColors.deepBlue),
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
            borderColor: AppColors.deepBlue,
            containerColor: Colors.white,
            fontColor: Colors.black,
            features: SizedBox(
              height: 200,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OfferFeature(feature: 'Unlimited URL Shortening'),
                    OfferFeature(feature: 'Basic Link Analytics'),
                    OfferFeature(feature: 'Customizable Short Links'),
                    OfferFeature(feature: 'Standard Support'),
                    OfferFeature(feature: 'Ad-supported')
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
            borderColor: AppColors.violet,
            containerColor: AppColors.violet,
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
            borderColor: AppColors.deepBlue,
            containerColor: Colors.white,
            fontColor: Colors.black,
            features: SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OfferFeature(feature: 'Team Collaboration'),
                  OfferFeature(feature: 'User Roles and Permission'),
                  OfferFeature(feature: 'Enhanced Security'),
                  OfferFeature(feature: 'API Access'),
                  OfferFeature(feature: 'Dedicated Account Manager'),
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
