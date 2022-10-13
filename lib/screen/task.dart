import 'package:flutter/material.dart';
import 'package:todo_beginner/screen/todoList.dart';

import '../todo.dart';

class Task extends StatelessWidget {
  Task({Key? key}) : super(key: key);
  // Define a controller for the text field.
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task'),
      ),
      body: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(
              hintText: 'Title',
            ),
          ),
          TextField(
            maxLines: 5,
            keyboardType: TextInputType.multiline,
            controller: descriptionController,
            decoration: const InputDecoration(
              hintText: 'Description',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Todo task = Todo(
                  title: titleController.text,
                  description: descriptionController.text,
                  status: false);
              Navigator.pop(context, task);
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
