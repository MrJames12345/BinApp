import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// - Colours - //

class BM_Colours {
  static const Color
    primary = Color.fromARGB(255, 70, 141, 189),
    secondary = Color.fromARGB(255, 157, 217, 31),
    black = Color.fromARGB(255, 22, 22, 22),
    white = Colors.white,
    grey = Color.fromARGB(255, 116, 105, 89)
  ;
}

// - Components - //

class BM_Components {

  // Text Field
  static TextFormField textField({
      required String placeholder,
      required Function(String)? onChanged,
      required bool hasError,
      bool? disabled
    }) {
      return TextFormField(
        enabled: disabled == null || !disabled,
        scrollPadding: const EdgeInsets.all(16),
        decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: GoogleFonts.livvic(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: BM_Colours.grey
          )
        ),
        onChanged: onChanged,
        style: GoogleFonts.livvic(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: BM_Colours.black
        ),
      );
    }

  // Checkbox
  static Checkbox checkbox({
    required bool checked
  }) {
    return Checkbox(
      value: checked,
      activeColor: BM_Colours.secondary,
      onChanged: (bool? newChecked) { print(newChecked); },
    );
  }

}