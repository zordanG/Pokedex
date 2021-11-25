// @dart=2.9

import 'package:flutter/material.dart';
import 'package:pokeapi_dart/pokeapi_dart.dart';
import 'package:pokedex/Views/poke_card.dart';

class PokePage extends StatefulWidget {
  const PokePage({key}) : super(key: key);

  @override
  _PokePageState createState() => _PokePageState();
}

class _PokePageState extends State<PokePage> {
  final api = PokeApi();
  int id = 1;
  List<String> names = [];
  List<Pokemon> pokemons = [];

  @override
  void initState() {
    super.initState();
    getInfo();
  }

  getInfo() async {
    Pokemon poke;
    while (id <= 898) {
      poke = await api.pokemon.get(id: id);
      setState(() {
        pokemons.add(poke);
      });
      id++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: ListView.builder(
        itemCount: pokemons.length,
        itemBuilder: (context, index) {
          return PokeCard(pokemon: pokemons[index]);
        },
      ),
    );
  }
}
