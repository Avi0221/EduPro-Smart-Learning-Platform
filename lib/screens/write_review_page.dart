import 'package:flutter/material.dart';

class WriteReviewPage extends StatefulWidget {
  const WriteReviewPage({super.key});

  @override
  State<WriteReviewPage> createState() => _WriteReviewPageState();
}

class _WriteReviewPageState extends State<WriteReviewPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _commentCtrl = TextEditingController();
  int _rating = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Write Review",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameCtrl,
                decoration: const InputDecoration(labelText: "Your Name"),
                validator:
                    (val) => val!.isEmpty ? "Name cannot be empty" : null,
              ),
              const SizedBox(height: 16),
              const Text(
                "Rating",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: List.generate(
                  5,
                  (index) => IconButton(
                    onPressed: () => setState(() => _rating = index + 1),
                    icon: Icon(
                      Icons.star,
                      color: _rating > index ? Colors.orange : Colors.grey,
                    ),
                  ),
                ),
              ),
              TextFormField(
                controller: _commentCtrl,
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: "Write your comment",
                  border: OutlineInputBorder(),
                ),
                validator:
                    (val) => val!.isEmpty ? "Comment cannot be empty" : null,
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Review submitted successfully"),
                      ),
                    );
                    Navigator.pushNamed(context, '/paymentMethod');
                  }
                },
                child: const Center(
                  child: Text(
                    "Submit Review",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
