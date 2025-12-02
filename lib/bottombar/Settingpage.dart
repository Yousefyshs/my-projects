import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        // قسم الجهاز (Device Settings)
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            "الاعدادات العامة",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

        ListTile(
          leading: Icon(Icons.wifi),
          title: Text("Wi-Fi"),
          subtitle: Text("Connected"),
          trailing: Icon(Icons.arrow_forward_ios, size: 18),
          onTap: () {},
        ),

        ListTile(
          leading: Icon(Icons.bluetooth),
          title: Text("Bluetooth"),
          subtitle: Text("On"),
          trailing: Icon(Icons.arrow_forward_ios, size: 18),
          onTap: () {},
        ),

        ListTile(
          leading: Icon(Icons.notifications),
          title: Text("Notifications"),
          trailing: Icon(Icons.arrow_forward_ios, size: 18),
          onTap: () {},
        ),

        ListTile(
          leading: Icon(Icons.brightness_6),
          title: Text("Display & Brightness"),
          trailing: Icon(Icons.arrow_forward_ios, size: 18),
          onTap: () {},
        ),

        Divider(),

        // قسم التطبيقات (Apps)
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            "تطبيقات النظام",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

        ListTile(
          leading: Icon(Icons.apps),
          title: Text("Apps"),
          trailing: Icon(Icons.arrow_forward_ios, size: 18),
          onTap: () {},
        ),

        ListTile(
          leading: Icon(Icons.storage),
          title: Text("Storage"),
          subtitle: Text("64 GB Used"),
          trailing: Icon(Icons.arrow_forward_ios, size: 18),
          onTap: () {},
        ),

        ListTile(
          leading: Icon(Icons.battery_full),
          title: Text("Battery"),
          subtitle: Text("85%"),
          trailing: Icon(Icons.arrow_forward_ios, size: 18),
          onTap: () {},
        ),

        Divider(),

        // قسم الخصوصية (Security)
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            "الخصوصية والأمان",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

        ListTile(
          leading: Icon(Icons.lock),
          title: Text("Security"),
          trailing: Icon(Icons.arrow_forward_ios, size: 18),
          onTap: () {},
        ),

        ListTile(
          leading: Icon(Icons.fingerprint),
          title: Text("Fingerprint"),
          trailing: Icon(Icons.arrow_forward_ios, size: 18),
          onTap: () {},
        ),

        ListTile(
          leading: Icon(Icons.password),
          title: Text("Change Password"),
          trailing: Icon(Icons.arrow_forward_ios, size: 18),
          onTap: () {},
        ),

        Divider(),

        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            "حول الهاتف",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

        ListTile(
          leading: Icon(Icons.info),
          title: Text("About Phone"),
          subtitle: Text("Version 1.0.0"),
          trailing: Icon(Icons.arrow_forward_ios, size: 18),
          onTap: () {},
        ),
      ],
    );
  }
}
