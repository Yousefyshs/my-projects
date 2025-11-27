import 'package:flutter/material.dart';


class Towpage1 extends StatefulWidget {
  final String name;

  Towpage1({super.key,
    required this.name
  });

  @override
  State<Towpage1> createState() => _Towpage1State();
}

class _Towpage1State extends State<Towpage1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text('Tow Page'),
          backgroundColor: Colors.blueGrey,
        ),
        body:
        Column(
          children: [
            Center(
              child: Text(widget.name),
            ),
            Text('data'),

            ElevatedButton(onPressed:() {
              Navigator.pop(context);
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                child: Text('Back'))
          ],
        )



    );
  }
}
