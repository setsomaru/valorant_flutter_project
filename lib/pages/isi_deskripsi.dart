import 'package:flutter/material.dart';
import 'package:valorant_project/pages/deskripsi_skill.dart';

class IsiDeskripsi extends StatefulWidget {
  const IsiDeskripsi({super.key, required this.bio});
  final String bio;
  @override
  State<IsiDeskripsi> createState() => _IsiDeskripsiState();
}

class _IsiDeskripsiState extends State<IsiDeskripsi> {
  bool container1 = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  container1 = true;
                });
              },
              child: const Text("Bio"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  container1 = !true;
                });
              },
              child: const Text("Abilities"),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        if (container1)
          Container(
            child: Text(
              widget.bio,
              style: const TextStyle(fontSize: 22),
              textAlign: TextAlign.justify,
            ),
          ),
        if (!container1)
          Container(
            child: const Text("Isinya Deskripsi SKill Agents"),
          ),
        const SizedBox(height: 20),
      ],
    );
  }
}
