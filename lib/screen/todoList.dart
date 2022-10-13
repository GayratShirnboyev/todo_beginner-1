import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_beginner/screen/task.dart';

import '../todo.dart';

class TodoList extends StatefulWidget {
  TodoList({Key? key}) : super(key: key);
  List<Todo> todoList = [];

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: widget.todoList.length,
          itemBuilder: (context, index) {
            return TodoTile(index);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Todo todo = await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Task()));

          setState(() {
            widget.todoList.add(todo);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }

  ListTile TodoTile(int index) {
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
  }
}
