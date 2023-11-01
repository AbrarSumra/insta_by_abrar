import 'dart:async';

import 'package:flutter/material.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("assets/images/Abrar_sit.JPG"),
                          ),
                        ),
                      ),
                      Container(
                        width: 15,
                        height: 15,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Your Story",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "8m",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Javed Gill * Cheques (Slowed + Reverb)",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(maxRadius: 10),
                          CircleAvatar(maxRadius: 10),
                          CircleAvatar(maxRadius: 10),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Activity",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ],
                  ),
                  const Spacer(),
                  storyButton("Create", Icons.play_circle_sharp),
                  storyButton("Facebook", Icons.facebook_outlined),
                  storyButton("Send", Icons.send),
                  storyButton("More", Icons.more_horiz),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget storyButton(String name, IconData iconData) {
    return Row(
      children: [
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 12, color: Colors.white),
            ),
          ],
        ),
        const SizedBox(width: 5)
      ],
    );
  }
}
