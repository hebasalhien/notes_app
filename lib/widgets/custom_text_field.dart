import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final double height;
  const CustomTextField({super.key, required this.title, required this.height});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: title,
        hintStyle: TextStyle(fontFamily: 'Poppins', color: kPrimaryColor),
        enabledBorder: buildBorder(color: Colors.white),
        focusedBorder: buildBorder(color: kPrimaryColor),
      ),
      cursorColor: kPrimaryColor,
      style: TextStyle(height: height, fontFamily: 'Poppins', fontSize: 24),
    );
  }

  OutlineInputBorder buildBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color),
    );
  }
}
