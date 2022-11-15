import 'package:flutter/material.dart';

import 'green_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x00EEF2E6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Image(
              image: AssetImage('assets/logo.png'),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GreenButton(
              const [Text('Get started'), Icon(Icons.arrow_forward_ios)]),
          const SizedBox(
            height: 5,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
                  side: const MaterialStatePropertyAll<BorderSide>(
                      BorderSide(color: Color(0x003d8361), width: 2))),
              onPressed: () => {},
              child: const Text('Login'))
        ],
      ),
    );
  }
}
