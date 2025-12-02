import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final List<String> items = [
    "iPhone",
    "Samsung",
    "Laptop",
    "Tablet",
    "Mouse",
    "Keyboard",
    "Headphones",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.label),
          title: Text(items[index]),
          subtitle: Text("Description of ${items[index]}"),
          trailing: Icon(Icons.arrow_forward_ios),
        );
      },
    );
  }
}
