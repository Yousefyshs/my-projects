import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatefulWidget {
  @override
  _ProfileAppState createState() => _ProfileAppState();
}

class _ProfileAppState extends State<ProfileApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // لإخفاء شريط "Debug"
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'CV',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          // استخدام التمرير لحل مشكلة تجاوز الشاشة
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- القسم العلوي (البنر) ---
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/Untitled-2.jpg'),
                    fit: BoxFit.cover,
                    // إضافة فلتر لجعل الصورة أغمق قليلاً ليبرز النص
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.darken),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('images/yshs.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          )),
                    ),
                    SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('yousef',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text(' subih',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.bold))
                        ]),
                    Text(
                      'Software Developer',
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                  ],
                ),
              ),

              // --- قسم المعلومات الشخصية ---
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Personal Information",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),

                    // -- الصف الأول: الاسم --
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center, // محاذاة أفضل
                        children: [
                          Icon(Icons.person, color: Colors.black54, size: 20),
                          SizedBox(width: 8), // مسافة أفضل
                          Text("Name:",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Yousef Saleh Hmeid Subeih",
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 16, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // -- الصف الثاني: الإيميل --
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.email, color: Colors.black54, size: 20),
                          SizedBox(width: 8),
                          Text("Gmail:",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "ysubih75@gmail.com",
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 16, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // -- الصف الثالث: الهاتف --
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, color: Colors.black54, size: 20),
                          SizedBox(width: 8),
                          Text("Phone:",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "+967 770 523 557",
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 16, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // -- الصف الرابع: مكان الميلاد --
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.home, color: Colors.black54, size: 20),
                          SizedBox(width: 8),
                          Text("Place of birth:",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Yemen - Hadramaut - Tarim",
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 16, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              Divider(
                thickness: 1,
                color: Colors.grey[300],
                indent: 16,
                endIndent: 16,
              ),

              // --- قسم التعليم ---
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Education",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Row(
                        children: [
                          Icon(Icons.school, color: Colors.black54, size: 20),
                          SizedBox(width: 8),
                          Text("Degree:",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Bachelor of Computer Science",
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 16, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Row(
                        children: [
                          Icon(Icons.location_city, color: Colors.black54, size: 20),
                          SizedBox(width: 8),
                          Text("University:",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "Seiyun University",
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 16, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // --- بداية قسم المهارات (Skills) ---
              Divider(
                thickness: 1,
                color: Colors.grey[300],
                indent: 16,
                endIndent: 16,
              ),

              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Skills",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 12),

                    // -- مهارة Flutter --

                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Organization", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                          SizedBox(height: 4),
                          LinearProgressIndicator(
                            value: 0.8, // 80%
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                          ),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Flutter & Dart", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                          SizedBox(height: 4),
                          LinearProgressIndicator(
                            value: 0.5,
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                          ),
                        ],
                      ),
                    ),

                    // -- مهارة UI Design --
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("UI Design", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                          SizedBox(height: 4),
                          LinearProgressIndicator(
                            value: 0.4, // 60%
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
