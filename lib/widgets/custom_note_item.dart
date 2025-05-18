import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EditNoteView()),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 28, bottom: 28, left: 16),
        decoration: BoxDecoration(
          color: Colors.orangeAccent[100],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text('Flutter Tips', style: TextStyle(fontSize: 36)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  'Build your career with Tharwat Samy',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black.withValues(alpha: .5),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(FontAwesomeIcons.trash, size: 30),
              ),

              textColor: Colors.black,
              iconColor: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, top: 12),
              child: Text(
                'May 21,2025',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withValues(alpha: .5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
