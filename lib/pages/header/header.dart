import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:apache_riders/model/riders.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight;

  const Header({super.key, required this.appBarHeight });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Apache Riders', style: TextStyle(color: Colors.white)),
      backgroundColor: HexColor("8c1918"),
      toolbarHeight: appBarHeight,
      // Ajoutez d'autres éléments à votre en-tête si nécessaire
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}

