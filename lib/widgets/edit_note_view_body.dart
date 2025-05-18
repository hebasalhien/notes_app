import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        spacing: 50,
        children: const [
          SizedBox(),
          CustomAppBar(pageTitle: 'Edit Note', icon: Icons.check),
          CustomTextField(title: 'Title'),
          CustomTextField(title: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
