import 'package:flutter/material.dart';
import 'package:todo_beginner/screen/todoList.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: TodoList()),
  ));
}
