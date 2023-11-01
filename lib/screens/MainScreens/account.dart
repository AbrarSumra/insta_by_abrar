import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/story_data.dart';
import '../../widgets/elevated_button.dart';
import '../ProfilePage/post_tab.dart';
import '../ProfilePage/reels_tab.dart';
import '../ProfilePage/shared_account_tab.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "abrar_sumra_772",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 3, // Number of tabs
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool isScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/Abrar_sit.JPG"),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                follower("Posts", 10),
                                const SizedBox(width: 25),
                                follower("Followers", 608),
                                const SizedBox(width: 25),
                                follower("Following", 232),
                                const SizedBox(width: 25),
                              ],
                            ),
                            const Text(
                              "Aʙʀᴀʀㅤ Sᴜᴍʀᴀ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              "Gamer",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.blue,
                              ),
                            ),
                            const SizedBox(height: 3),
                            const Text(
                              "😈😈😈",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.blue,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: double.infinity,
                              height: 55,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Professional dashboard",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    "286 accounts reached in the last 30 days.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomElevatedButton(
                                    name: "Edit profile",
                                    color: Colors.grey.shade300,
                                    fontColor: Colors.black,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: CustomElevatedButton(
                                    name: "Share profile",
                                    color: Colors.grey.shade300,
                                    fontColor: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 90,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: storyData.length,
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
                                          width: 1,
                                          color: Colors.grey,
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
                                            storyData[index]["story"],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      storyData[index]["title"],
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: const TabBar(
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(
                      icon: Icon(
                        CupertinoIcons.square_grid_2x2,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        CupertinoIcons.play_rectangle,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        CupertinoIcons.person_crop_square,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              PostTab(),
              ReelTab(),
              SharedAccountTab(),
            ],
          ),
        ),
      ),
    );
  }

  Widget follower(String name, int num) {
    return Column(
      children: [
        Text(
          "$num",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
