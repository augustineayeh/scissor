import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  Widget navBarItem(String text, Color color) {
    return Text(
      text,
      style: TextStyle(fontSize: 28, color: color),
    );
  }

  Widget blueButton(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xff015ee2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  Widget blueText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Color(0xff015ee2), fontSize: 24),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        decoration: const BoxDecoration(color: Color(0xffE2E9F0)),
        height: 700,
        width: 370,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'MENU',
                      style: TextStyle(fontSize: 28),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 35,
                        ))
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    navBarItem('My URLs', Colors.blue),
                    const SizedBox(
                      height: 10,
                    ),
                    navBarItem('Features', Colors.black),
                    const SizedBox(
                      height: 10,
                    ),
                    navBarItem('Pricing', Colors.black),
                    const SizedBox(
                      height: 10,
                    ),
                    navBarItem('Analytics', Colors.black),
                    const SizedBox(
                      height: 10,
                    ),
                    navBarItem('FAQs', Colors.black),
                    const SizedBox(
                      height: 0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
