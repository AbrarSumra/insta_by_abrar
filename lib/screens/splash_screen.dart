import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/main.dart';
import 'package:instagram/screens/MainScreens/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (ctx) => const MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset("assets/images/instagram.png"),
            ),
            const Spacer(),
            const Text(
              "form",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 30,
              width: 100,
              child: Image.asset("assets/images/Meta-Logo-PNG.png"),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
