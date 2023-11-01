import 'package:flutter/material.dart';
import 'package:instagram/data/data.dart';

class PostTab extends StatelessWidget {
  const PostTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: data.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.red.shade200,
            margin: const EdgeInsets.all(5),
            child: Image.asset(data[index]["dp"]),
          );
        },
      ),
    );
  }
}
