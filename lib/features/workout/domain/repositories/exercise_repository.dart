import 'package:fitness_app/features/workout/domain/entities/exercise.dart';

abstract class ExerciseRepository {
  Future<List<Exercise>> fetchExercises();
}