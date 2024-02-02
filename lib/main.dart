import 'package:flutter/material.dart';
import 'package:valorant_project/kerangka.dart';
import 'package:valorant_project/pages/home_page.dart';
import 'package:valorant_project/pages/map_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ZakiValorant",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const Kerangka(),
    );
  }
}
