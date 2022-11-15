import 'package:flutter/material.dart';
import 'package:front/enums/account_type_enum.dart';

class ChooseWidget extends StatelessWidget {
  AccountType accountType;
  Image logo;

  ChooseWidget({required this.accountType, required this.logo});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
            side: const MaterialStatePropertyAll<BorderSide>(
                BorderSide(color: Color(0x003d8361), width: 2))),
        onPressed: () => {},
        child: Column(
          children: [
            logo,
            const SizedBox(
              height: 3,
            ),
            Text(accountType.toString())
          ],
        ));
  }
}
