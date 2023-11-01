import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screens/story_screen.dart';

import '../../data/data.dart';
import '../chats_screen.dart';
import '../notifications.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLike = false;
  bool isSave = false;

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          "assets/images/instagram-name-logo-2.png",
          fit: BoxFit.cover,
          height: 40,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Notifications()));
            },
            icon: const Icon(
              CupertinoIcons.heart,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()));
            },
            icon: const Icon(
              CupertinoIcons.chat_bubble_text,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: 85,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (ctx) => const StoryScreen()));
                              },
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/Abrar_sit.JPG"),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Your story",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              children: [
                                const SizedBox(width: 10),
                                Column(
                                  children: [
                                    Container(
                                      width: 65,
                                      height: 65,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 2,
                                          color: Colors.red,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 2,
                                            color: Colors.white,
                                          ),
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: CircleAvatar(
                                          maxRadius: 28,
                                          backgroundImage: AssetImage(
                                            data[index]["dp"],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      data[index]["name"],
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundImage: AssetImage(
                              data[index]["dp"],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data[index]["name"],
                              style: const TextStyle(fontSize: 18),
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.music_note_rounded,
                                  size: 15,
                                ),
                                Text(
                                  "Song Name",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_horiz),
                        )
                      ],
                    ),
                    Image(
                      image: AssetImage(
                        data[index]["dp"],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isLike = !isLike;
                            });
                          },
                          icon: isLike
                              ? const Icon(CupertinoIcons.heart_fill)
                              : const Icon(CupertinoIcons.heart),
                          color: isLike ? Colors.red : Colors.black,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.chat_bubble),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.send),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isSave = !isSave;
                            });
                          },
                          icon: isSave
                              ? const Icon(CupertinoIcons.bookmark_fill)
                              : const Icon(CupertinoIcons.bookmark),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(text: "Liked by"),
                                TextSpan(
                                  text: " Profile Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(text: " and"),
                                TextSpan(
                                  text: " others",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/Abrar1.jpg"),
                                maxRadius: 15,
                              ),
                              SizedBox(width: 10),
                              Text("Add a comment...")
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "4 minutes ago",
                            style: TextStyle(fontSize: 12),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
