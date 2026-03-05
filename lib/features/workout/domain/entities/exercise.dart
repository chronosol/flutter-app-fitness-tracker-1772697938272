class Exercise {
  final String name;
  final String category;
  final int duration;

  const Exercise({required this.name, required this.category, required this.duration});

  Exercise copyWith({String? name, String? category, int? duration}) {
    return Exercise(
      name: name ?? this.name,
      category: category ?? this.category,
      duration: duration ?? this.duration,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Exercise &&
        other.name == name &&
        other.category == category &&
        other.duration == duration;
  }

  @override
  int get hashCode => name.hashCode ^ category.hashCode ^ duration.hashCode;

  @override
  String toString() => 'Exercise(name: $name, category: $category, duration: $duration)';
}