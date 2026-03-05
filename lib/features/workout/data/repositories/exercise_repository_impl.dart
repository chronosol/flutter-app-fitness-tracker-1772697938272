import 'dart:async';
import 'package:fitness_app/features/workout/domain/entities/exercise.dart';
import 'package:fitness_app/features/workout/domain/repositories/exercise_repository.dart';

class ExerciseRepositoryImpl implements ExerciseRepository {
  @override
  Future<List<Exercise>> fetchExercises() async {
    // Mock data fetching
    return Future.value([
      Exercise(name: 'Push Up', category: 'Strength', duration: 30),
      Exercise(name: 'Jogging', category: 'Cardio', duration: 20),
    ]);
  }
}