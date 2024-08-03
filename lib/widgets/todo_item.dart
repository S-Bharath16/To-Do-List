import 'package:flutter/material.dart';
import '../model/todo.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final Function(ToDo) onToDoChanged;
  final Function(String) onDeleteItem;

  ToDoItem({
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      leading: Checkbox(
        value: todo.isDone,
        onChanged: (value) {
          onToDoChanged(todo);
        },
      ),
      title: Text(
        todo.todoText ?? '',
        style: TextStyle(
          decoration: todo.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      subtitle: todo.deadline != null
          ? Text(
        'Deadline: ${todo.deadline!.toLocal().toString().split(' ')[0]}',
        style: TextStyle(color: Colors.grey),
      )
          : null,
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          onDeleteItem(todo.id);
        },
      ),
    );
  }
}
