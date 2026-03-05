import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers/exercise_controller.dart';

class WorkoutScreen extends ConsumerWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exercisesAsyncValue = ref.watch(exerciseControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Workout')),
      body: exercisesAsyncValue.when(
        data: (exercises) {
          return ListView.builder(
            itemCount: exercises.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Exercise ${(index + 1)}'),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
