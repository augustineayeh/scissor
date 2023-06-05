import 'package:flutter/material.dart';
import 'package:scissor/ui/widgets/widgets.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      actions: const <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BlueTextButton(text: 'Log in'),
            SizedBox(
              width: 20,
            ),
            BlueButton(buttonText: 'Try for free'),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ],
    );
  }
}
