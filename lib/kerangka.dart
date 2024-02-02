import 'package:flutter/material.dart';
import 'package:valorant_project/pages/home_page.dart';
import 'package:valorant_project/pages/map_page.dart';

class Kerangka extends StatefulWidget {
  const Kerangka({super.key});

  @override
  State<Kerangka> createState() => _KerangkaState();
}

class _KerangkaState extends State<Kerangka> {
  int currentpage = 0;
  List<Widget> pages = [const HomePage(), const MapPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentpage),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.man_2_outlined), label: "Agent"),
          NavigationDestination(icon: Icon(Icons.map_rounded), label: "Map")
        ],
        selectedIndex: currentpage,
        onDestinationSelected: (int value) {
          setState(() {
            currentpage = value;
          });
        },
      ),
    );
  }
}
