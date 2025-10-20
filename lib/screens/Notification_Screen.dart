import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> notifications = [
      {
        "section": "Today",
        "items": [
          {
            "icon": Icons.category,
            "iconBg": Colors.grey.shade200,
            "title": "New Category Course.!",
            "subtitle": "New the 3D Design Course is Availa..",
          },
          {
            "icon": Icons.folder_special,
            "iconBg": Colors.blue.shade700,
            "title": "New Category Course.!",
            "subtitle": "New the 3D Design Course is Availa...",
            "iconColor": Colors.white,
          },
          {
            "icon": Icons.confirmation_number,
            "iconBg": Colors.grey.shade200,
            "title": "Today's Special Offers",
            "subtitle": "You Have made a Coure Payment.",
          },
        ],
      },
      {
        "section": "Yesterday",
        "items": [
          {
            "icon": Icons.credit_card,
            "iconBg": Colors.grey.shade200,
            "title": "Credit Card Connected.!",
            "subtitle": "Credit Card has been Linked.!",
          }
        ]
      },
      {
        "section": "Oct 20, 2025",
        "items": [
          {
            "icon": Icons.person,
            "iconBg": Colors.grey.shade200,
            "title": "Account Setup Successful.!",
            "subtitle": "Your Account has been Created.",
          }
        ]
      }
    ];

    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[50],
          elevation: 0,
          toolbarHeight: 70,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xFF232555),
              size: 28,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text(
            "Notifications",
            style: TextStyle(
              color: Color(0xFF232555),
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          centerTitle: false,
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            children: [
            ...notifications.map((section) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const SizedBox(height: 22),
    Text(
    section["section"],
    style: const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Color(0xFF232555),
    ),
    ),
    const SizedBox(height: 8),
    ...List<Widget>.from(section["items"].map<Widget>((item) => Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: NotificationCard(
    icon: item["icon"],
    iconBg: item["iconBg"],
    iconColor: item["iconColor"] ?? Colors.black,
    title: item["title"],
    subtitle: item["subtitle"],
    ),
    )),
    )],
    )),
    ],
    ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final IconData icon;
  final Color iconBg;
  final Color iconColor;
  final String title;
  final String subtitle;

  const NotificationCard({
    super.key,
    required this.icon,
    required this.iconBg,
    required this.iconColor,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: iconBg,
              ),
              width: 56, height: 56,
              child: Icon(icon, color: iconColor, size: 32),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF232555),
                      fontSize: 19,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
