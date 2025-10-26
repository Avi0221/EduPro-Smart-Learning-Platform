import 'package:flutter/material.dart';
import '../services/program_service.dart';
import '../models/program_model.dart';
import 'program_detail_screen.dart';

class ProgramListScreen extends StatefulWidget {
  const ProgramListScreen({super.key});

  @override
  State<ProgramListScreen> createState() => _ProgramListScreenState();
}

class _ProgramListScreenState extends State<ProgramListScreen> {
  late Future<List<Program>> programsFuture;

  @override
  void initState() {
    super.initState();
    programsFuture = ProgramService().fetchPrograms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Programs")),
      body: FutureBuilder<List<Program>>(
        future: programsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          final programs = snapshot.data ?? [];
          return ListView.builder(
            itemCount: programs.length,
            itemBuilder: (context, index) {
              final program = programs[index];
              return Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  leading: Image.network(program.image, width: 80, fit: BoxFit.cover),
                  title: Text(program.title),
                  subtitle: Text("₹${program.price}  •  ⭐ ${program.rating}"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProgramDetailScreen(programId: program.id),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
