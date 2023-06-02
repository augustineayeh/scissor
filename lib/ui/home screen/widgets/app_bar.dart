import 'package:flutter/material.dart';
import 'package:scissor/ui/common/utils.dart';
import 'package:scissor/ui/common/widgets.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            blueText('Log in'),
            const SizedBox(
              width: 20,
            ),
            const BlueButton(buttonText: 'Try for free'),
            const SizedBox(
              width: 20,
            )
          ],
        ),
      ],
    );
  }
}
