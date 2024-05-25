import 'package:flutter/material.dart';

class Scores extends StatelessWidget {
  const Scores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
    child: Text(
    'Scores',
    style: TextStyle(fontSize: 24), // Optionnel : définir la taille du texte
    ),
    );

  }
}
