import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key, required this.label, required this.controller});
  final String label;
  final TextEditingController controller;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          label: Text(
            widget.label,
            style: GoogleFonts.workSans(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 21,
              fontWeight: FontWeight.w400
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0x000000)),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}