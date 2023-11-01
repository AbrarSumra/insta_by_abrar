import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({super.key});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  bool isReelLike = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Container(
                height: 635,
                color: Colors.blue,
              ),
              Positioned(
                right: 10,
                top: 10,
                bottom: 20,
                child: SizedBox(
                  height: 700,
                  child: Column(
                    children: [
                      const Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isReelLike = !isReelLike;
                          });
                        },
                        icon: isReelLike
                            ? const Icon(
                                CupertinoIcons.heart_fill,
                                color: Colors.red,
                                size: 30,
                              )
                            : const Icon(
                                CupertinoIcons.heart,
                                color: Colors.white,
                                size: 30,
                              ),
                      ),
                      const Text(
                        "1 M",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Icon(
                        CupertinoIcons.chat_bubble,
                        color: Colors.white,
                        size: 30,
                      ),
                      const Text(
                        "100 k",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 30,
                      ),
                      const Text(
                        "500 k",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 30,
                      ),
                      const SizedBox(height: 10),
                      const Icon(
                        CupertinoIcons.music_note_2,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          maxRadius: 15,
                          backgroundColor: Colors.white,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Abrar_Sumra_772",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: 70,
                          height: 20,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              "Follow",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "😈😈😈😈",
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 180,
                          height: 20,
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black26,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                CupertinoIcons.music_note_2,
                                color: Colors.white,
                                size: 15,
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Marquee(
                                  text: "Type here Song Name........",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  scrollAxis: Axis.horizontal,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  blankSpace: 20.0,
                                  velocity: 20.0,
                                  startPadding: 10,
                                  accelerationCurve: Curves.linear,
                                  decelerationCurve: Curves.easeOut,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: 80,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black26,
                          ),
                          child: const Text(
                            "4 people",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
