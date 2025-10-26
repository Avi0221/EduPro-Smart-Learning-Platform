import 'package:flutter/material.dart';
import 'package:edupro/screens/program_details_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> courses = [
      {
        'title': 'Graphic Design Fundamentals',
        'duration': '6 Weeks',
        'price': '499',
        'image': 'assets/images/design_course.jpg',
      },
      {
        'title': 'Digital Marketing Mastery',
        'duration': '8 Weeks',
        'price': '599',
        'image': 'assets/images/marketing_course.jpg',
      },
      {
        'title': 'Flutter App Development',
        'duration': '10 Weeks',
        'price': '699',
        'image': 'assets/images/flutter_course.jpg',
      },
      {
        'title': 'Web Development Bootcamp',
        'duration': '12 Weeks',
        'price': '799',
        'image': 'assets/images/web_course.jpg',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A5AE0),
        title: const Text(
          'Courses',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return GestureDetector(
            onTap: () {
              // When tapped, go to Program Details Page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProgramDetailsPage(),
                  settings: RouteSettings(arguments: course),
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.only(bottom: 12),
              elevation: 3,
              child: Row(
                children: [
                  // Course Image
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                      image: DecorationImage(
                        image: AssetImage(course['image']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Course Details
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course['title']!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Duration: ${course['duration']}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            '${course['price']}/-',
                            style: const TextStyle(
                              fontSize: 15,
                              color: Color(0xFF6A5AE0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
