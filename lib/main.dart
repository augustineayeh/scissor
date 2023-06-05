import 'package:flutter/material.dart';
import 'package:scissor/ui/home/home.dart';
import 'package:scissor/ui/widgets/widgets.dart';

export 'package:scissor/ui/styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          fontFamily: 'Georgia',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)
              .copyWith(background: AppColors.lightYellow)),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
