import 'package:flutter/material.dart';

void main() {
  runApp(const MyUIExample());
}

class MyUIExample extends StatelessWidget {
  const MyUIExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextField(),
    );
  }

}