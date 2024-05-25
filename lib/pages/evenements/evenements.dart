import 'package:flutter/material.dart';

class Evenements extends StatelessWidget {
  const Evenements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Événements',
        style: TextStyle(fontSize: 24), // Optionnel : définir la taille du texte
      ),
    );
  }
}

