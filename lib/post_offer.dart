import 'package:flutter/material.dart';
import 'package:front/green_button.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TextField(
            autofocus: true,
            autofillHints: ['Type of waste'],
          ),
          const TextField(
            autofocus: false,
            autofillHints: ['Quantity'],
          ),
          const TextField(
            autofocus: false,
            autofillHints: ['Price'],
          ),
          const TextField(
            autofocus: false,
            autofillHints: ['Disponibility'],
          ),
          const TextField(
            autofocus: false,
            autofillHints: ['Address'],
          ),
          const SizedBox(
            height: 20,
          ),
          GreenButton(const [Text('Post offer')])
        ]);
  }
}
