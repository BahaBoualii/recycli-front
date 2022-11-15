import 'package:flutter/material.dart';
import 'package:front/choose_widget.dart';
import 'package:front/enums/account_type_enum.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text("Hello...\nYou are using \nour app as... ?"),
          ),
          const SizedBox(
            height: 15,
          ),
          ChooseWidget(
              accountType: AccountType.industry,
              logo: Image.asset('assets/factory.png')),
          const SizedBox(
            height: 10,
          ),
          ChooseWidget(
              accountType: AccountType.individual,
              logo: Image.asset('assets/individual.png')),
        ],
      ),
    );
  }
}
