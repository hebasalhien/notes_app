import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.picked, required this.color});
  final bool picked;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child:
          picked
              ? CircleAvatar(
                backgroundColor: Colors.yellow.shade300,
                radius: 40,
                child: CircleAvatar(backgroundColor: color, radius: 36),
              )
              : CircleAvatar(backgroundColor: color, radius: 38),
    );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff3eb489),
    Color(0xff267055),
    Color(0xff2F5233),
    Color(0xffb1d8b7),
    Color(0xff167d7f),
    Color(0xff29a0b1),
    Color(0xff8fdde7),
    Color(0xffb6e5d8),
    Color(0xfffbe5c8),
    Color(0xffffc2c7),
    Color(0xffffaebc),
    Color(0xfffd49a0),
    Color(0xffa16ae8),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNotesCubit>(context).color = colors[index];
              setState(() {});
            },
            child: ColorItem(
              picked: currentIndex == index,
              color: colors[index],
            ),
          );
        },
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
