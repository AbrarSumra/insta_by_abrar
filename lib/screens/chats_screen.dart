import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/data/recent_chat_data.dart';
import 'package:instagram/widgets/elevated_button.dart';
import 'package:instagram/widgets/text_form_field.dart';

import '../data/data.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "abrar_sumra_772",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.black,
            size: 35,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 35,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 325,
                      child: CustomTextField(),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Filter",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: 120,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/Abrar_sit.JPG"),
                                ),
                              ),
                            ),
                            Container(
                              transform: Matrix4.translationValues(8, -15, 0),
                              width: 50,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  "Note...",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const Text(
                          "Your note",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            const SizedBox(height: 18),
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 65,
                                          height: 65,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: CircleAvatar(
                                            maxRadius: 28,
                                            backgroundImage: AssetImage(
                                              data[index]["dp"],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          transform: Matrix4.translationValues(
                                              8, -15, 0),
                                          width: 50,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Text(
                                              data[index]["note"],
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      data[index]["name"],
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                    name: "Primary",
                    color: Colors.blue.shade50,
                  ),
                  CustomElevatedButton(
                    name: "General",
                    color: Colors.blue.shade50,
                  ),
                  CustomElevatedButton(
                    name: "Requests",
                    color: Colors.blue.shade50,
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: recentChatData.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const SizedBox(height: 10),
                    ListTile(
                      leading: CircleAvatar(
                        maxRadius: 30,
                        child: Image.asset(
                          recentChatData[index]["dp"],
                        ),
                      ),
                      title: Text(
                        recentChatData[index]["name"],
                        style: const TextStyle(fontWeight: FontWeight.w400),
                      ),
                      subtitle: Text(
                        recentChatData[index]["subTitle"],
                      ),
                      trailing: const Icon(Icons.camera_alt_outlined),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Suggestions",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const SizedBox(height: 10),
                    ListTile(
                      leading: CircleAvatar(
                        maxRadius: 30,
                        child: Image.asset(
                          data[index]["dp"],
                        ),
                      ),
                      title: Text(
                        data[index]["name"],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        "Tap to chat",
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt_outlined),
                      ),
                    ),
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
