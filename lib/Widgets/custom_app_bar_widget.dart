import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          icon: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey.shade800.withValues(alpha: .8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.sort,
              size: 28,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
