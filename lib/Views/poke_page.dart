// @dart=2.9

import 'package:flutter/material.dart';
import 'package:pokeapi_dart/pokeapi_dart.dart';
import 'package:pokedex/Views/poke_card.dart';

class PokePage extends StatefulWidget {
  const PokePage({
    key,
    this.idStart,
  }) : super(key: key);
  final int idStart;

  @override
  _PokePageState createState() => _PokePageState();
}

class _PokePageState extends State<PokePage> {
  final api = PokeApi();
  String _name = '';
  int id = 1;

  getInfo(int id) async {
    var pokemon = await api.pokemon.get(id: id);
    setState(() {
      _name = pokemon.name;
    });
    /*await api.pokemon.get(id: id).then((pokemon) {
      return pokemon.name;
    });*/
  }

  getName(int id) {
    getInfo(id);
    return _name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: PokeCard(
            name: getName(1),
            height: "10",
            weight: "3",
            //id: getId(),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: PokeCard(
            name: getName(2),
            height: "10",
            weight: "3",
            //id: getId(),
          ),
        ),
      ]),
    );
  }
}
