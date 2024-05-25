
//import 'package:apache_riders/pages/header/header.dart';
import 'package:apache_riders/pages/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const  MaterialApp(
      title: "Apache Scooter",
      debugShowCheckedModeBanner: false,
        home: Home(),
    );
  }
}

