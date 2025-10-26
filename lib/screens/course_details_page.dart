import 'package:flutter/material.dart';

class CourseDetailsPage extends StatelessWidget {
  const CourseDetailsPage({
    super.key,
    required courseTitle,
    required courseSubtitle,
    required coursePrice,
    required courseImage,
  });

  @override
  Widget build(BuildContext context) {
    final course = ModalRoute.of(context)!.settings.arguments as Map?;

    return Scaffold(
      appBar: AppBar(
        title: Text(course?['title'] ?? 'Course Details'),
        backgroundColor: const Color(0xFF6A5AE0),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course?['title'] ?? '',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Duration: ${course?['duration']}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'This course covers all essential modules, lessons, and practical projects. You’ll get access to recorded sessions, live Q&A, and certification upon completion.',
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6A5AE0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 14,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/enrollmentForm',
                    arguments: course,
                  );
                },
                child: const Text(
                  'Enroll Now',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
