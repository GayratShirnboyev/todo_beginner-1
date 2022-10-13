import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../todo.dart';

class TodoList extends StatefulWidget {
  TodoList({Key? key}) : super(key: key);
  List<Todo> todoList = [
    Todo(title: 'Todo 1', description: 'Description 1', status: true),
    Todo(title: 'Todo 2', description: 'Description 2', status: false),
    Todo(title: 'Todo 3', description: 'Description 3', status: true),
  ];

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.todoList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.todoList[index].title),
            subtitle: Text(widget.todoList[index].description),
            trailing: Checkbox(
              value: widget.todoList[index].status,
              onChanged: (value) {
                setState(() {
                  widget.todoList[index].status = value!;
                });
              },
            ),
          );
        });
  }
}
