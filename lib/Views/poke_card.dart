// @dart=2.9
// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:pokeapi_dart/pokeapi_dart.dart';

class PokeCard extends StatefulWidget {
  const PokeCard({key, this.pokemon}) : super(key: key);
  final Pokemon pokemon;

  @override
  State<PokeCard> createState() => _PokeCardState();
}

class _PokeCardState extends State<PokeCard> {
  Color color;
  Pokemon pokemon;

  @override
  void initState() {
    super.initState();
    pokemon = widget.pokemon;
    switch (pokemon.types.first.type.name.toString().toLowerCase()) {
      case "bug":
        color = const Color(0xFF336600);
        break;
      case "dark":
        color = const Color(0xFF000000);
        break;
      case "dragon":
        color = const Color(0xFFB3FFFF);
        break;
      case "electric":
        color = const Color(0xFFE6E600);
        break;
      case "fairy":
        color = const Color(0xFFFF3399);
        break;
      case "fighting":
        color = const Color(0xFFCC6600);
        break;
      case "fire":
        color = const Color(0xFFFF471A);
        break;
      case "flying":
        color = const Color(0xFF99CCFF);
        break;
      case "ghost":
        color = const Color(0xFF333399);
        break;
      case "grass":
        color = const Color(0xFF009933);
        break;
      case "ground":
        color = const Color(0xFF996633);
        break;
      case "ice":
        color = const Color(0xFF66CCFF);
        break;
      case "normal":
        color = const Color(0xFFFF9999);
        break;
      case "poison":
        color = const Color(0xFF9900CC);
        break;
      case "psychic":
        color = const Color(0xFFFF00FF);
        break;
      case "rock":
        color = const Color(0xFF802B00);
        break;
      case "steel":
        color = const Color(0xFF669999);
        break;
      case "water":
        color = const Color(0xFF0000CC);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20.0,
      color: color,
      child: Container(
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 120,
              child: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Image(
                    width: 100,
                    height: 100,
                    image: Image.network(pokemon.sprites.frontDefault).image),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image.asset('/Images/line.png'),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(children: [
                  Text(
                    pokemon.name.toUpperCase(),
                    style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "Type: " +
                        pokemon.types.first.type.name.toString().toLowerCase(),
                    style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "Height: " + pokemon.height.toString().toLowerCase(),
                    style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "Weight: " + pokemon.weight.toString().toLowerCase(),
                    style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ]),
              ),
            ),
            SizedBox(
              width: 50,
              height: 50,
              child: Image.asset('/Images/pokeballCard.png'),
            )
          ],
        )),
      ),
    );
  }
}
