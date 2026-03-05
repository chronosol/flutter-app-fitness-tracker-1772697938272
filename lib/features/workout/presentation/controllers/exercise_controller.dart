import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/repositories/workout_repository.dart';
import '../../domain/entities/exercise.dart';

class ExerciseController extends StateNotifier<AsyncValue<List<Exercise>>> {
  final WorkoutRepository repository;
  ExerciseController(this.repository) : super(const AsyncValue.loading()) {
    _fetchExercises();
  }

  Future<void> _fetchExercises() async {
    try {
      final exercises = await repository.getExercises();
      state = AsyncValue.data(exercises);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}

final exerciseControllerProvider = 
    StateNotifierProvider<ExerciseController, AsyncValue<List<Exercise>>>((ref) {
  final repository = ref.watch(workoutRepositoryProvider);
  return ExerciseController(repository);
});
