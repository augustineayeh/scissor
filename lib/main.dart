import 'package:flutter/material.dart';
import 'package:scissor/src/views/home%20page/home_page.dart';

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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
              .copyWith(background: const Color(0xfffef9e9))),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
