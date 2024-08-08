import 'package:app_pet/models/petList.dart';
import 'package:app_pet/widgets/cardPet.dart';
import 'package:flutter/material.dart';

class Petpage extends StatelessWidget {
  Petpage({super.key, required this.title});

  final String title;

  // final List<Petmodel> petList = [
  //   const Petmodel(
  //       nome: "Bolinha",
  //       tipo: "Cachorro",
  //       raca: "Vira-lata",
  //       peso: 12,
  //       clinica: "Petshop Patinhas"),
  //   const Petmodel(
  //       nome: "Beto",
  //       tipo: "Cachorro",
  //       raca: "Salsicha",
  //       peso: 7,
  //       clinica: "Petshop Patinhas"),
  //   const Petmodel(
  //       nome: "Leo",
  //       tipo: "Gato",
  //       raca: "Vira-lata",
  //       peso: 6,
  //       clinica: "Casa do Animal"),
  //   const Petmodel(
  //       nome: "Mingau",
  //       tipo: "Gato",
  //       raca: "Vira-lata",
  //       peso: 5,
  //       clinica: "Clinica São Carlos"),
  //   const Petmodel(
  //       nome: "Spike",
  //       tipo: "Cachorro",
  //       raca: "Pincher",
  //       peso: 12,
  //       clinica: "Clinica São Carlos"),
  //   const Petmodel(
  //       nome: "Michelangelo",
  //       tipo: "Cachorro",
  //       raca: "Vira-lata",
  //       peso: 16,
  //       clinica: "Petshop Patinhas"),
  //   const Petmodel(
  //       nome: "Beth",
  //       tipo: "Gato",
  //       raca: "Siames",
  //       peso: 8,
  //       clinica: "Casa do Animal"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title),
              ],
            )),
        body: ListView.builder(
          itemCount: petList.length,
          itemBuilder: (context, index) {
            final pet = petList[index];
            return title == pet.clinica
                ? Container(
                    margin: const EdgeInsets.all(10), child: Cardpet(pet: pet))
                : Container();
          },
        )

        // Cardpet(
        //   pet: Petmodel(
        //       nome: "Bolinha",
        //       tipo: "Cachorro",
        //       raca: "Vira-lata",
        //       peso: 12,
        //       clinica: "Petshop Patinhas"),
        // )

        );
  }
}
