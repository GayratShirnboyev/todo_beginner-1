import 'package:flutter/material.dart';

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
            onPressed: () {},
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
