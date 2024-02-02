import 'package:flutter/material.dart';
import 'package:valorant_project/widget/grid_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text.rich(
            TextSpan(children: <TextSpan>[
              TextSpan(
                text: "CHOOSE YOUR AGENTS\n",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "\nFind your playstyle",
                style: TextStyle(fontSize: 20, fontFamily: "Hind"),
              )
            ]),
            textAlign: TextAlign.center,
          ),
          flexibleSpace: Container(
            child: Image.asset(
              "images/background.jpg",
              fit: BoxFit.cover,
            ),
          ),
          toolbarHeight: 150,
        ),
        body: const GridWidget(),
      ),
    );
  }
}
