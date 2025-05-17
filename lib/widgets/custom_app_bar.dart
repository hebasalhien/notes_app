import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_Search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Spacer(flex: 1),
        CustomSearchIcon(),
      ],
    );
  }
}
