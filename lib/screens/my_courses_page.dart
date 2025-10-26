import 'package:flutter/material.dart';

class MyCoursesPage extends StatelessWidget {
  const MyCoursesPage({super.key});

  // Mock data for enrolled courses
  final List<Map<String, dynamic>> _myCourses = const [
    {
      'title': 'Flutter App Development',
      'instructor': 'John Doe',
      'progress': 0.85,
      'image': 'assets/images/flutter_course.jpg',
    },
    {
      'title': 'UI/UX Design Mastery',
      'instructor': 'Sarah Johnson',
      'progress': 0.45,
      'image': 'assets/images/uiux_course.jpg',
    },
    {
      'title': 'Python for Beginners',
      'instructor': 'David Smith',
      'progress': 0.62,
      'image': 'assets/images/python_course.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'My Courses',
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF6A5AE0),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            _myCourses.isEmpty
                ? const Center(
                  child: Text(
                    "You haven't enrolled in any course yet!",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                )
                : ListView.builder(
                  itemCount: _myCourses.length,
                  itemBuilder: (context, index) {
                    final course = _myCourses[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(12),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            course['image'],
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          course['title'],
                          style: const TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Instructor: ${course['instructor']}',
                              style: const TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 6),
                            LinearProgressIndicator(
                              value: course['progress'],
                              backgroundColor: Colors.grey.shade300,
                              color: const Color(0xFF6A5AE0),
                              minHeight: 6,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${(course['progress'] * 100).toInt()}% completed',
                              style: const TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Opening ${course['title']}...',
                                style: const TextStyle(fontFamily: 'Inter'),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
      ),
    );
  }
}
