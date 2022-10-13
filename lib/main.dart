import 'package:flutter/material.dart';
import 'package:todo_beginner/screen/task.dart';
import 'package:todo_beginner/screen/todoList.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoList(),
    ),
  );
}
