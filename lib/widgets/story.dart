
import 'package:flutter/material.dart';

import '../main.dart';

class Story extends StatelessWidget {
  const Story({
    Key? key,
    required this.img,
    required this.name
  }) : super(key: key);

  final String img;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            const CircleColor(),
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
            ),
            CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(img),
            )
          ],
        ),
        const SizedBox(height: 5),
        Text(name),
        const SizedBox(height: 5),

      ],
    );
  }
}
