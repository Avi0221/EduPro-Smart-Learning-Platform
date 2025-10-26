import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  Future<List<dynamic>> _loadReviews() async {
    await Future.delayed(const Duration(seconds: 1));
    final String response = await rootBundle.loadString(
      'assets/mock_data/reviews.json',
    );
    return json.decode(response)['reviews'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Reviews',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: _loadReviews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error loading reviews'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No reviews found'));
          }

          final reviews = snapshot.data!;
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              final review = reviews[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 12),
                elevation: 0,
                color: Colors.grey[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    child: Text(
                      review['name'][0],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text(
                    review['name'],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(review['comment']),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      review['rating'],
                      (i) => const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () => Navigator.pushNamed(context, '/writeReview'),
        child: const Icon(Icons.add_comment),
      ),
    );
  }
}
