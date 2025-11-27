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
    return Scaffold(
      backgroundColor: Color(0xfff7f1f7), // نفس لون الخلفية في الصورة
      appBar: AppBar(
        backgroundColor: Color(0xff58727f), // اللون الأزرق الرمادي
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Home Page",
              style: TextStyle(fontSize: 22),
            ),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Column(
          children: [

            //-------------- INPUT 1 -------------------
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                labelText: "Enter the Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            SizedBox(height: 20),

            //-------------- INPUT 2 -------------------
            TextField(
              controller: controller2,
              readOnly: true,
              decoration: InputDecoration(
                labelText: "the Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            SizedBox(height: 30),

            //-------------- BUTTONS -------------------
            Column(
              children: [
                _myButton("Submit", () {
                  controller2.text = controller1.text;
                }),

                SizedBox(height: 10),

                _myButton("Navigator", () {}),

                SizedBox(height: 10),

                _myButton("Navigator1", () {}),
              ],
            )
          ],
        ),
      ),
    );
  }

  //-------------- CUSTOM BUTTON STYLE -------------------
  Widget _myButton(String text, VoidCallback onPressed) {
    return Container(
      width: 140,
      height: 38,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff58727f),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}

