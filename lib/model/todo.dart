import 'package:equatable/equatable.dart';

class ToDo extends Equatable {
  final String id;
  final String? todoText;
  bool isDone;
  DateTime? deadline;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
    this.deadline,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'todoText': todoText,
      'isDone': isDone,
      'deadline': deadline?.toIso8601String(),
    };
  }

  factory ToDo.fromMap(Map<String, dynamic> map) {
    return ToDo(
      id: map['id'],
      todoText: map['todoText'],
      isDone: map['isDone'],
      deadline: map['deadline'] != null
          ? DateTime.parse(map['deadline'])
          : null,
    );
  }

  @override
  List<Object?> get props => [id, todoText, isDone, deadline];
}
