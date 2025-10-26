import 'package:flutter/material.dart';
import '../models/program_model.dart';
import '../services/program_service.dart';

class ProgramDetailScreen extends StatelessWidget {
  final String programId;
  const ProgramDetailScreen({super.key, required this.programId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Program Details")),
      body: FutureBuilder<Program>(
        future: ProgramService().fetchProgramById(programId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          final program = snapshot.data!;
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(program.image, width: double.infinity, height: 200, fit: BoxFit.cover),
                const SizedBox(height: 16),
                Text(program.title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text("⭐ ${program.rating}  |  ₹${program.price}", style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 12),
                Text("Instructor: ${program.instructor}", style: const TextStyle(fontSize: 15)),
                const SizedBox(height: 12),
                Text(program.description, style: const TextStyle(fontSize: 14, color: Colors.black87)),
              ],
            ),
          );
        },
      ),
    );
  }
}
