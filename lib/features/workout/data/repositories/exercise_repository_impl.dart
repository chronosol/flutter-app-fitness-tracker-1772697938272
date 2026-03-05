import '../models/exercise_model.dart';
import '../../domain/repositories/exercise_repository.dart';

class ExerciseRepositoryImpl implements ExerciseRepository {
  @override
  Future<List<ExerciseModel>> fetchExercises() async {
    // Simulate network call
    await Future.delayed(const Duration(seconds: 2));
    return [
      ExerciseModel(name: 'Push-up', description: 'A basic push-up exercise.', duration: 30),
      ExerciseModel(name: 'Squat', description: 'A basic squat exercise.', duration: 45),
    ];
  }
}
