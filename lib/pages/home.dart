import 'dart:js';

import 'package:ab02011/controller/pokemon_controller.dart';
import 'package:ab02011/models/pokemon_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final PokemonController pokemonController = Get.put(PokemonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<PokeModel>(
          future: PokemonController().getData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return CircularProgressIndicator();
            } else {
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: snapshot.data!.pokemon.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Image.network(snapshot.data!.pokemon[index].img),
                          Text(snapshot.data!.pokemon[index].name),
                        ],
                      ),
                    );
                  });
            }
          }),
    );
  }
}
