import 'package:flutter/material.dart';
import 'package:note_app/Widgets/note_card_item.dart';

class NoteCardItemListView extends StatelessWidget {
  const NoteCardItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 20),
      itemBuilder: (BuildContext context, int index) {
        return NoteCardItem();
      },
      itemCount: 4,
    );
  }
}
