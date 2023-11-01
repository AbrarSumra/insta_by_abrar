import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
          filled: true,
          fillColor: Colors.grey.shade200,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          label: const Text(
            "Search",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
