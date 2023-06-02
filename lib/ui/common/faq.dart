import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  final String question;

  const FAQ({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: 320,
                child: Text(
                  widget.question,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 20,
                ))
          ],
        ),
        const Divider()
      ],
    );
  }
}
