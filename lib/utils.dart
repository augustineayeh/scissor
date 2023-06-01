import 'package:flutter/material.dart';

Widget createAnsweredFAQ(String question, String answer) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            question,
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
        answer,
      ),
      const SizedBox(
        height: 10,
      ),
      const Divider()
    ],
  );
}

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

Widget createFAQ(String question) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: 320,
              child: Text(
                question,
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
