import 'package:flutter/material.dart';

class Offer extends StatelessWidget {
  final String offerType;
  final String price;
  final String description;
  final Color borderColor;
  final Color containerColor;
  final Color fontColor;
  final Widget features;
  const Offer({
    Key? key,
    required this.offerType,
    required this.price,
    required this.description,
    required this.borderColor,
    required this.containerColor,
    required this.fontColor,
    required this.features,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
