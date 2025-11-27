import 'package:flutter/material.dart';

class Towpage extends StatelessWidget {
  // هذا المتغير يستقبل النص القادم من الصفحة الأولى
  final String name;

  const Towpage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tow Page'),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          "Name: $name",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
