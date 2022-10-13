import 'package:flutter/material.dart';
import 'package:todo_beginner/screen/todoList.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Todo List'),
          ),
          body: TodoList(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print(1);
            },
            child: const Icon(Icons.add),
          )),
    ),
  );
}
