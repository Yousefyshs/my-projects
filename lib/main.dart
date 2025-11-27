
import 'package:cv/Towpage.dart';
import 'package:cv/Towpage1.dart';
import 'package:flutter/material.dart';
import 'bottombar/Indexpage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _controller1= TextEditingController();
  TextEditingController _controller2= TextEditingController();
  late String controller3;
  void _login(){
    setState(() {
      _controller2.text=_controller1.text;
    });
  }

  void _Navgitor1(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>Towpage1(
            name: _controller1.text

        )));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          backgroundColor: Colors.blueGrey,
        ),

        body: Column(
          children: [
            SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                labelText: 'Enter the Name',
                hintText: 'ahmed',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              controller: _controller1,
            ),

            SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                labelText: 'the Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              controller: _controller2,
              readOnly: true,
            ),

            ElevatedButton(
              onPressed: _login,
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {
                // عند الضغط على الزر
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // الانتقال إلى الصفحة الثانية
                    // وإرسال النص الذي تم كتابته عبر المتغير `name`
                    builder: (context) => Towpage(
                      name: _controller1.text,
                    ),
                  ),
                );
              },
              child: const Text('Send to Second Page'),
            ),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: (){
                  _Navgitor1();
                },
                child: Text('Navgitor1')),



          ],
        ),
      ),
    );
  }
}

