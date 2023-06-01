import 'package:flutter/material.dart';
import 'package:scissor/views/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Header(),
                Features(),
                Pricing(),
                TrimURL(),
                FAQ(),
                Footer()
              ],
            ),
          )),
    );
  }
}
