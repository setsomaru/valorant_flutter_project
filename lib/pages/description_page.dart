import 'package:flutter/material.dart';
import 'package:valorant_project/core/listdata.dart';
import 'package:valorant_project/pages/isi_deskripsi.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage(
      {super.key,
      required this.nama,
      required this.gambar,
      required this.role,
      required this.gambardes,
      required this.bio});

  final String nama;
  final String gambar;
  final String role;
  final String gambardes;
  final String bio;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Description"),
        backgroundColor: const Color.fromARGB(255, 87, 14, 9),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 150,
                    alignment: Alignment.centerLeft,
                    child: Image.network(gambardes),
                  ),
                  const SizedBox(width: 55),
                  Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "$nama\n",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "Role : $role",
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              IsiDeskripsi(bio: bio)
            ],
          ),
        ),
      ),
    );
  }
}
