import 'package:flutter/material.dart';
import 'package:scissor/ui/widgets/widgets.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Stack(clipBehavior: Clip.none, children: <Widget>[
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
                      text: 'Optimize Your Online Experience with Our',
                    ),
                    TextSpan(
                      text: ' URL Shortening',
                      style: TextStyle(color: AppColors.deepBlue),
                    ),
                    TextSpan(
                      text: ' Solution',
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: -46,
                  left: 100,
                  child: RotationTransition(
                    turns: const AlwaysStoppedAnimation(55 / 360),
                    child: Image.asset('assets/stroke.png',
                        height: 80, color: AppColors.deepBlue),
                  ))
            ]),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Personalize your shortened URLs to align with your brand identity. Utilize custom slugs, branded links, and domain customization options to reinforce your brand presence and enhance user engagement.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlueButton(buttonText: 'Sign UP'),
              BlueTextButton(text: 'Learn more')
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
