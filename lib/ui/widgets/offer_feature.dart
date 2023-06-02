import 'package:flutter/material.dart';

class OfferFeature extends StatefulWidget {
  final String feature;
  final Color fontColor;
  const OfferFeature({
    Key? key,
    required this.feature,
    required this.fontColor,
  }) : super(key: key);

  @override
  State<OfferFeature> createState() => _OfferFeatureState();
}

class _OfferFeatureState extends State<OfferFeature> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/check.png', height: 20, color: widget.fontColor),
        const SizedBox(
          width: 10,
        ),
        Text(widget.feature,
            style: TextStyle(color: widget.fontColor, fontSize: 20))
      ],
    );
  }
}
