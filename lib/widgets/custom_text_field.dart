import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final int maxLines;
  const CustomTextField({super.key, required this.title, this.maxLines = 2});
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: TextStyle(
          fontFamily: 'Poppins',
          color: kPrimaryColor,
          fontSize: 24,
        ),
        enabledBorder: buildBorder(color: Colors.white),
        focusedBorder: buildBorder(color: kPrimaryColor),
      ),
      cursorColor: kPrimaryColor,
    );
  }

  OutlineInputBorder buildBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color),
    );
  }
}
