import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants.dart';

class BulletText extends StatelessWidget {
  final String text;
  const BulletText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(kBullet),
        ),
        SizedBox(
          width: 450,
          child: Text(
            text,
            softWrap: true,
            textWidthBasis: TextWidthBasis.parent,
            style: GoogleFonts.poppins(
              fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
            ),
          ),
        ),
      ],
    );
  }
}
