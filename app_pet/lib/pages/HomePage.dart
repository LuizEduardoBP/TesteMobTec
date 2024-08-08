import 'package:app_pet/pages/PetPage.dart';
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
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Petpage(title: "Clinica São Carlos")));
          },
        ),
        const SizedBox(
          height: 20,
        ),
        ButtonWidget(
          text: "Petshop Patinhas",
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Petpage(title: "Petshop Patinhas")));
          },
        ),
        const SizedBox(
          height: 20,
        ),
        ButtonWidget(
          text: "Casa do Animal",
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Petpage(title: "Casa do Animal")));
          },
        ),
      ],
    );
  }
}
