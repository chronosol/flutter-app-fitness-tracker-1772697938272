import '../../domain/entities/exercise.dart';

class ExerciseModel extends Exercise {
  const ExerciseModel({required String name, required String description, required int duration}) : super(name: name, description: description, duration: duration);
}
