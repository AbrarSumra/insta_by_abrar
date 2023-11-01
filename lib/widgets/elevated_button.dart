import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.name,
    this.color = Colors.blue,
    this.fontColor = Colors.blue,
  });

  final String name;
  final Color color;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 30,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
