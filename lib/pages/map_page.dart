import 'package:flutter/material.dart';
import 'package:valorant_project/core/listdata.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "MAPS",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          child: Image.network(
            "https://img.freepik.com/free-photo/grunge-background-red-brushstrokes-black-background_125540-2396.jpg?w=1380&t=st=1706701988~exp=1706702588~hmac=07200de3dd375b7d6ea3c251027d626d0daf8cb44ee799731f5f42b837b51279",
            fit: BoxFit.cover,
          ),
        ),
        toolbarHeight: 100,
      ),
      body: GridView.builder(
        itemCount: dataMaps.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          mainAxisExtent: 150,
          // childAspectRatio: 120
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Scaffold();
              }));
            },
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.09),
                      borderRadius: BorderRadius.circular(19),
                      image: DecorationImage(
                          image: NetworkImage(
                            dataMaps[index]["link"],
                          ),
                          fit: BoxFit.cover)),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      dataMaps[index]["map"],
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Text(dataAgents[index]["nama"])
              ],
            ),
          );
        },
      ),
    );
  }
}
