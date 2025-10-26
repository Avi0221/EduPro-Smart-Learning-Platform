import 'package:flutter/material.dart';

class CourseSelectionPage extends StatelessWidget {
  const CourseSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final courses = [
      {'title': 'Flutter Development', 'duration': '8 Weeks'},
      {'title': 'UI/UX Design Basics', 'duration': '6 Weeks'},
      {'title': 'Data Science Intro', 'duration': '10 Weeks'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Course'),
        backgroundColor: const Color(0xFF6A5AE0),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(course['title']!),
              subtitle: Text(course['duration']!),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/courseDetails',
                  arguments: course,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
