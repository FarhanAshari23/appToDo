// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:to_do_app/utils/my_button.dart';

class DialogBoxProfile extends StatelessWidget {
  final TextEditingController controllerName;
  final TextEditingController controllerJob;
  VoidCallback onSave;
  VoidCallback cancel;
  DialogBoxProfile({
    super.key,
    required this.controllerName,
    required this.controllerJob,
    required this.cancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xff344C64),
      content: SizedBox(
        width: 120,
        height: 170,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              style: const TextStyle(
                color: Colors.white,
              ),
              controller: controllerName,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Input new name",
                hintStyle: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 5),
            TextField(
              style: const TextStyle(
                color: Colors.white,
              ),
              controller: controllerJob,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Input new job",
                hintStyle: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(width: 5),
                MyButton(
                  text: "Cancel",
                  onPressed: cancel,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
