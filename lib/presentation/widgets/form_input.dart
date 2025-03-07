import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/themes.dart';

class FormInput extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const FormInput({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.2,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
              fontSize: Theme.of(context).textTheme.bodyMedium?.fontSize,
              color: AppColors.darkGrey,
            ),
            fillColor: AppColors.white,
            filled: true,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
