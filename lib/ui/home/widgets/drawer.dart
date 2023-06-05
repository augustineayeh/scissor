import 'package:flutter/material.dart';
import 'package:scissor/ui/widgets/widgets.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        decoration: const BoxDecoration(color: Color(0xffE2E9F0)),
        height: 600,
        width: 400,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 35,
                      )),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      NavBarItem(text: 'My URLs', color: Colors.blue),
                      SizedBox(
                        height: 10,
                      ),
                      NavBarItem(text: 'Features', color: Colors.black),
                      SizedBox(
                        height: 10,
                      ),
                      NavBarItem(text: 'Pricing', color: Colors.black),
                      SizedBox(
                        height: 10,
                      ),
                      NavBarItem(text: 'Analytics', color: Colors.black),
                      SizedBox(
                        height: 10,
                      ),
                      NavBarItem(text: 'FAQs', color: Colors.black),
                      SizedBox(
                        height: 0,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook,
                        size: 35,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.email,
                        size: 35,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.phone,
                        size: 35,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.telegram,
                        size: 35,
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                child: Text(
                  '© 2023 Scissor',
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
