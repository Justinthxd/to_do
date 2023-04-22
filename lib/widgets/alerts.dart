import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/data/models/note.dart';

import '../provider/provider.dart';

addNote(BuildContext context) {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController userController = TextEditingController();

  showDialog(
    context: context,
    builder: (context) {
      final main = Provider.of<MainProvider>(context);
      return AlertDialog(
        backgroundColor: const Color.fromRGBO(20, 20, 20, 1),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Add Note',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Divider(
              color: Colors.white.withOpacity(0.03),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(0.05),
              ),
              child: TextField(
                controller: titleController,
                // textAlign: TextAlign.center,
                textCapitalization: TextCapitalization.sentences,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Title',
                  hintStyle: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(0.05),
              ),
              child: TextField(
                controller: descriptionController,
                // textAlign: TextAlign.center,
                textCapitalization: TextCapitalization.sentences,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Description',
                  hintStyle: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(0.05),
              ),
              child: TextField(
                controller: userController,
                // textAlign: TextAlign.center,
                textCapitalization: TextCapitalization.sentences,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'User',
                  hintStyle: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    if (titleController.text.isNotEmpty &&
                        descriptionController.text.isNotEmpty &&
                        userController.text.isNotEmpty) {
                      Note note = Note(
                        title: titleController.text,
                        description: descriptionController.text,
                        date: DateTime.now(),
                        task: '-',
                        user: userController.text,
                      );

                      main.setNotes = note;

                      Navigator.pop(context);
                    }
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
