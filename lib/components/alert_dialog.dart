import 'package:flutter/material.dart';

void customShowDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Message"),
        content: const Text("New Message"),
        actions: [
          ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Close"))
        ],
      );
    },
  );
}
