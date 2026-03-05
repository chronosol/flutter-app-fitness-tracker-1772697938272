class WorkoutRepository {
  Future<List<Exercise>> getExercises() async {
    // Simulate fetching exercises
    return [];
  }
}

final workoutRepositoryProvider = Provider<WorkoutRepository>((ref) {
  return WorkoutRepository();
});
