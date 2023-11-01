import 'package:flutter/material.dart';

class SharedAccountTab extends StatelessWidget {
  const SharedAccountTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 21,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(5),
          );
        },
      ),
    );
  }
}
