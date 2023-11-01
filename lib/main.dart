import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screens/MainScreens/account.dart';
import 'package:instagram/screens/MainScreens/add_page.dart';
import 'package:instagram/screens/chats_screen.dart';
import 'package:instagram/screens/MainScreens/home.dart';
import 'package:instagram/screens/MainScreens/reels_page.dart';
import 'package:instagram/screens/notifications.dart';
import 'package:instagram/screens/MainScreens/search_page.dart';
import 'package:instagram/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _pagesData = [
    const HomeScreen(),
    SearchPage(),
    const AddPage(),
    const ReelsScreen(),
    const AccountPage(),
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pagesData[currentPage],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: Icon(
                  currentPage == 0
                      ? CupertinoIcons.house_fill
                      : CupertinoIcons.house,
                  size: 30,
                ),
                onPressed: () {
                  setState(() {
                    currentPage = 0;
                  });
                }),
            IconButton(
                icon: Icon(
                  currentPage == 1
                      ? CupertinoIcons.search
                      : CupertinoIcons.search,
                  size: 30,
                ),
                onPressed: () {
                  setState(() {
                    currentPage = 1;
                  });
                }),
            IconButton(
                icon: Icon(
                  currentPage == 2 ? Icons.add_box : Icons.add_box_outlined,
                  size: 30,
                ),
                onPressed: () {
                  setState(() {
                    currentPage = 2;
                  });
                }),
            IconButton(
                icon: Icon(
                  currentPage == 3
                      ? CupertinoIcons.play_rectangle_fill
                      : CupertinoIcons.play_rectangle,
                  size: 30,
                ),
                onPressed: () {
                  setState(() {
                    currentPage = 3;
                  });
                }),
            IconButton(
                icon: Icon(
                  currentPage == 4
                      ? CupertinoIcons.person_circle_fill
                      : CupertinoIcons.person_circle,
                  size: 30,
                ),
                onPressed: () {
                  setState(() {
                    currentPage = 4;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
