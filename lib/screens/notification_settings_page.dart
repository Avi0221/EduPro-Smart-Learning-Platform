import 'package:flutter/material.dart';

class NotificationSettingsPage extends StatefulWidget {
  const NotificationSettingsPage({Key? key}) : super(key: key);

  @override
  _NotificationSettingsPageState createState() => _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  Map<String, bool> notificationSettings = {
    'Special Offers': true,
    'Sound': false,
    'Vibrate': false,
    'General Notification': true,
    'Promo & Discount': false,
    'Payment Options': true,
    'App Update': true,
    'New Service Available': false,
    'New Tips Available': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notification Settings'), centerTitle: true),
      body: ListView(
        children: notificationSettings.keys.map((String key) {
          return SwitchListTile(
            title: Text(key),
            value: notificationSettings[key]!,
            onChanged: (bool value) {
              setState(() {
                notificationSettings[key] = value;
              });
            },
            activeColor: Colors.blue,
          );
        }).toList(),
      ),
    );
  }
}
