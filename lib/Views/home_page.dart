// @dart=2.9
import 'package:flutter/material.dart';
import 'package:pokedex/Views/poke_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(initialPage: 0);
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Pokedex"),
          backgroundColor: Colors.grey[800],
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                pageController.animateToPage(--page,
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.bounceInOut);
              },
            ),
            Center(
              child: Text("Pág. " + (page + 1).toString()),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                pageController.animateToPage(++page,
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.bounceInOut);
              },
            )
          ]),
      body: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              page = index;
            });
          },
          children: const [
            PokePage(idStart: 1),
            /*PokePage(idStart: 7),
            PokePage(idStart: 13),
            PokePage(idStart: 19),
            PokePage(idStart: 25),*/
          ]),
    );
  }
}
