import 'package:flutter/material.dart';

class Feature extends StatelessWidget {
  final String heading;
  final String description;
  const Feature({
    Key? key,
    required this.heading,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
