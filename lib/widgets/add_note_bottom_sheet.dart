import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: SingleChildScrollView(
        child: Column(
          spacing: 60,
          children: [
            CustomTextField(title: 'Title'),
            CustomTextField(title: 'Content', maxLines: 5),
            CustomButton(width: MediaQuery.of(context).size.width,action: 'Add',onTap: (){},),
          ],
        ),
      ),
    );
  }
}
