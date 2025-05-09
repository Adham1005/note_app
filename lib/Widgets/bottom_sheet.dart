import 'package:flutter/material.dart';
import 'package:note_app/Widgets/text_form_field_widget.dart';

class BottomSheetItem extends StatelessWidget {
  const BottomSheetItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 20),
      child: Column(
        children: [
          CustomTextFormField(hintText: 'Title'),
          SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            hintText: 'Content',
            maxLines: 5,
          ),
          Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: FloatingActionButton(
              onPressed: () {
                // TODO
              },
              child: Icon(
                Icons.save_as_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
