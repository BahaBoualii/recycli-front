import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  List<Widget> widgets;

  GreenButton(this.widgets);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0x003d8361)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        ),
        onPressed: () => {},
        child: Row(
          children: widgets,
        ));
  }
}
