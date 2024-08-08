import 'package:app_pet/widgets/button.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 30,
        ),
        ButtonWidget(
          text: "Clinica São Carlos",
          onPressed: () {
            print("C");
          },
        ),
        ButtonWidget(
          text: "Petshop Patinhas",
          onPressed: () {
            print("P");
          },
        ),
        ButtonWidget(
          text: "Casa do Animal",
          onPressed: () {
            print("A");
          },
        ),
      ],
    );
  }
}
