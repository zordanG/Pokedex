// @dart=2.9
import 'package:flutter/material.dart';

class PokeCard extends StatelessWidget {
  const PokeCard({key, this.name, this.weight, this.height, this.id})
      : super(key: key);
  final String name;
  final String weight;
  final String height;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20.0,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              //child: Image(image: Image.memory(getImage()),
              child: Text(name,
                  style: const TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(height,
                  style: const TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(weight,
                  style: const TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(id.toString(),
                  style: const TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
