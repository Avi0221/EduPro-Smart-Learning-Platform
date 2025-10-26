// ignore_for_file: unused_element

import 'package:flutter/material.dart';

class ProgramDetailsPage extends StatefulWidget {
  const ProgramDetailsPage({super.key, required courseTitle});

  @override
  State<ProgramDetailsPage> createState() => _ProgramDetailsPageState();
}

class _ProgramDetailsPageState extends State<ProgramDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade100,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Graphic Design',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Course Thumbnail
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Icon(Icons.image, size: 60, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 16),

            // Course Title + Price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  child: Text(
                    'Design Principles: Organizing Visual Elements',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  '499/-',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              '4.8 ★  |  120 Reviews',
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 16),

            // Tabs
            TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              indicatorColor: Colors.blue,
              tabs: const [Tab(text: 'About'), Tab(text: 'Curriculum')],
            ),
            const SizedBox(height: 16),

            SizedBox(
              height: 150,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Text(
                    'Graphic Design is one piece of professional graphic design services that includes posters, flyers, and brochures.',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  Text(
                    'Section 01: Introduction\n• Why Using Graphic Design\n• Setup Your Graphic Workspace',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Instructor Section
            const Text(
              'Instructor',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Robert Jr',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Graphic Design',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 24),

            // What You'll Get
            const Text(
              'What You’ll Get',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                _FeatureItem(icon: Icons.video_library, text: '32 Lessons'),
                _FeatureItem(
                  icon: Icons.devices,
                  text: 'Access Mobile, Desktop & TV',
                ),
                _FeatureItem(icon: Icons.bar_chart, text: 'Beginner Level'),
                _FeatureItem(icon: Icons.book, text: 'Audio Book'),
                _FeatureItem(
                  icon: Icons.all_inclusive,
                  text: 'Lifetime Access',
                ),
                _FeatureItem(icon: Icons.quiz, text: '100 Quizzes'),
                _FeatureItem(
                  icon: Icons.workspace_premium,
                  text: 'Certificate of Completion',
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Reviews Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Reviews',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'SEE ALL',
                  style: TextStyle(color: Colors.blue, fontSize: 13),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const _ReviewCard(
              name: 'Will',
              rating: 4.8,
              review:
                  'This course has been very useful. Mentor was friendly and helpful.',
              time: '3 Weeks Ago',
            ),
            const SizedBox(height: 8),
            const _ReviewCard(
              name: 'Mr. M. Thompson',
              rating: 4.8,
              review:
                  'This course has been very useful. Mentor works well and teaching style is best. The first few sessions were amazing!',
              time: '3 Weeks Ago',
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.white,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/enrollmentForm');
          },
          child: const Text(
            'Enroll Course - 499/-',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const _FeatureItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue, size: 20),
          const SizedBox(width: 10),
          Text(text, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}

class _ReviewCard extends StatelessWidget {
  final String name;
  final double rating;
  final String review;
  final String time;
  const _ReviewCard({
    required this.name,
    required this.rating,
    required this.review,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('$rating ★', style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            review,
            style: const TextStyle(fontSize: 13, color: Colors.black87),
          ),
          const SizedBox(height: 6),
          Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }
}
