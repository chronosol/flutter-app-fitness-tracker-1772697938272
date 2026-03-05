class Exercise {
  final String name;
  final String description;
  final int duration;

  const Exercise({required this.name, required this.description, required this.duration});

  Exercise copyWith({String? name, String? description, int? duration}) {
    return Exercise(
      name: name ?? this.name,
      description: description ?? this.description,
      duration: duration ?? this.duration,
    );
  }

  @override
  bool operator ==(Object other) => identical(this, other) || (other is Exercise && runtimeType == other.runtimeType && name == other.name && description == other.description && duration == other.duration);

  @override
  int get hashCode => name.hashCode ^ description.hashCode ^ duration.hashCode;

  @override
  String toString() => 'Exercise(name: $name, description: $description, duration: $duration)';
}
