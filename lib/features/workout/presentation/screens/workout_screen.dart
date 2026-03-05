import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers/exercise_controller.dart';

class WorkoutScreen extends ConsumerWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exercise = ref.watch(exerciseProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Planner'),
      ),
      body: Center(
        child: Text('Current exercise: $exercise'),
      ),
    );
  }
}
