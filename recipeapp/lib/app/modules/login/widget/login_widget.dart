import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key, required this.label, required this.controller, this.isPassword = false,});
  final String label;
  final TextEditingController controller;
  final bool isPassword;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.isPassword ? _obscureText : false,
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
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}