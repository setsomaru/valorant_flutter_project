import 'package:flutter/material.dart';

class DeskripsiSkill extends StatelessWidget {
  const DeskripsiSkill({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          title: const Text("Skill ke -n"),
          tileColor: const Color.fromARGB(255, 163, 62, 3),
          onTap: () {},
          leading: const Icon(Icons.assist_walker_rounded),
          trailing: const Icon(Icons.stream_rounded),
        );
      },
      separatorBuilder: (context, index) => const Divider(
        color: Colors.white,
      ),
    );
  }
}
