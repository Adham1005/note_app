import 'package:flutter/material.dart';
import 'package:note_app/Widgets/bottom_sheet.dart';
import 'package:note_app/Widgets/custom_app_bar_widget.dart';
import 'package:note_app/Widgets/note_card_list_view.dart';
import 'package:note_app/Widgets/text_form_field_widget.dart';

class NotesHomeScreen extends StatelessWidget {
  const NotesHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          top: 40,
          right: 16,
          bottom: 0,
        ),
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              hintText: 'Search notes...',
              prefixIcon: Icons.search,
              needIcon: true,
            ),
            Expanded(
              child: NoteCardItemListView(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return BottomSheetItem();
              });
        },
        child: Icon(
          Icons.note_alt_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
