import 'package:flutter/material.dart';

class ReelTab extends StatelessWidget {
  const ReelTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (ctx, index) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 250,
                  color: Colors.blue,
                  margin: const EdgeInsets.only(right: 10, bottom: 10),
                ),
              ),
              Expanded(
                child: Container(
                  height: 250,
                  color: Colors.blue,
                  margin: const EdgeInsets.only(right: 10, bottom: 10),
                ),
              ),
              Expanded(
                child: Container(
                  height: 250,
                  color: Colors.blue,
                  margin: const EdgeInsets.only(bottom: 10),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
