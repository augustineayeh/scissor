// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

Widget navBarItem(String text, Color color) {
  return Text(
    text,
    style: TextStyle(fontSize: 28, color: color),
  );
}

Widget footerCaption(String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 2),
    child: Text(
      text,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
  );
}

Widget footerText(String text) {
  return SizedBox(
    width: 180,
    child: Text(
      text,
    ),
  );
}

const Color deepBlue = Color(0xff015ee2);

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
