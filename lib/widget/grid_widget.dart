import 'package:flutter/material.dart';
import 'package:valorant_project/core/listdata.dart';
import 'package:valorant_project/pages/description_page.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: dataAgents.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DescriptionPage(
                gambar: dataAgents[index]["link"],
                nama: dataAgents[index]["nama"],
                role: dataAgents[index]["role"],
                gambardes: dataAgents[index]["linkdes"],
                bio: dataAgents[index]["bio"],
              );
            }));
          },
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.09),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                          dataAgents[index]["link"],
                        ),
                        fit: BoxFit.cover)),
              ),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  dataAgents[index]["nama"],
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              )),
              // const SizedBox(
              //   height: 10,
              // ),
              // Text(dataAgents[index]["nama"])
            ],
          ),
        );
      },
    );
  }
}


 // return Padding(
          //   padding: const EdgeInsets.all(2.0),
          //   child: Container(
          //     height: 50,
          //     width: 50,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(12.0),
          //       color: Colors.amberAccent,
          //     ),
          //     child: Column(
          //       children: [
          //         Image.network(
          //           dataAgents[index]["link"],
          //           // fit: BoxFit.cover,
          //         ),
          //         const Text("Nama Agents")
          //       ],
          //     ),
          //   ),
          // );


      //     return GestureDetector(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) {
      //       return const DescriptionPage();
      //     }),
      //   );
      // },