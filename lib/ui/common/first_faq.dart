import 'package:flutter/material.dart';

class FirstFAQ extends StatefulWidget {
  final String question;
  final String answer;

  const FirstFAQ({
    Key? key,
    required this.question,
    required this.answer,
  }) : super(key: key);

  @override
  State<FirstFAQ> createState() => _FirstFAQState();
}

class _FirstFAQState extends State<FirstFAQ> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.question,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.remove,
                  size: 20,
                ))
          ],
        ),
        Text(
          widget.answer,
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider()
      ],
    );
  }
}
