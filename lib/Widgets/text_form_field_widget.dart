import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final IconData? prefixIcon;
  final Function(String?)? onChanged;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validate;
  final TextInputType? textInputType;
  final int? maxLines;
  final bool needIcon;
  final bool isFilled;
  final double fontSize;

  const CustomTextFormField({
    super.key,
    this.obscureText = false,
    required this.hintText,
    this.prefixIcon,
    this.onChanged,
    this.onSaved,
    this.validate,
    this.textInputType,
    this.maxLines,
    this.isFilled = true,
    this.fontSize = 16,
    this.needIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.white,
      ),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is empty';
        } else {
          return null;
        }
      },
      obscureText: obscureText,
      onChanged: onChanged,
      keyboardType: textInputType,
      maxLines: maxLines,
      cursorColor: Colors.grey,
      cursorHeight: 15,
      onSaved: onSaved,
      decoration: InputDecoration(
        filled: isFilled,
        prefixIcon: needIcon == true
            ? Icon(
                prefixIcon,
                color: Colors.grey,
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
        ),
        // labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),

        errorStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
    );
  }
}

// class Validators {
//   static String? email(String? value) {
//     if (value == null || value.isEmpty) return 'Email is required';
//     if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
//       return 'Enter a valid email';
//     }
//     return null;
//   }
//
//   static String? password(String? value) {
//     if (value == null || value.isEmpty) return 'Password is required';
//     if (value.length < 6) return 'Password too short';
//     return null;
//   }
// }
