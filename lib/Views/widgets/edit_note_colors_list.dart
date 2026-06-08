import 'package:flutter/material.dart';
import 'package:noteapp/Views/widgets/color_item.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/models/note_model.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});

  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].toARGB32();
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                colorCurrentIndex: kColors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
