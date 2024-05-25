import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('8c1918'),
        body: SingleChildScrollView(
          child: Stack(children:  [
            Image.network("https://apachescootershop.com/img/logo-1669661838.jpg" , width: 120,)
          ],) ,
        ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
    items:
    const [
    BottomNavigationBarItem(
        label: 'Accueil',
            icon: Icon(Icons.home)
        ),
    BottomNavigationBarItem(
          label: 'Évènements',
          icon: Icon(Icons.emoji_events)
          ),
      BottomNavigationBarItem(
          label: 'Statistiques',
          icon: Icon(Icons.analytics)
      ),
      BottomNavigationBarItem(
          label: 'Paramètres',
          icon: Icon(Icons.settings)
      ),

    ],
    ),
    );
  }




}


