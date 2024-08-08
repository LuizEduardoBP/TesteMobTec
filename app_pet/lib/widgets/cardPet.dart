import 'package:app_pet/models/petModel.dart';
import 'package:flutter/material.dart';

class Cardpet extends StatelessWidget {
  const Cardpet({
    super.key,
    required this.pet,
  });

  final Petmodel pet;

  String tipoCard(String tipo) {
    return tipo.toLowerCase() == "cachorro" ? "🐶" : "🐱";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.inversePrimary,
            borderRadius: BorderRadius.circular(10)),
        width: 300,
        height: 150,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Tipo: ${pet.tipo}"),
                  Text("Nome: ${pet.nome}"),
                  Text("Raça: ${pet.raca}"),
                  Text("Peso: ${pet.peso} kg")
                ],
              ),
              Text(
                tipoCard(pet.tipo),
                style: const TextStyle(fontSize: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
