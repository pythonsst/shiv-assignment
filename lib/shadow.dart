import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShadowText extends StatelessWidget {
  const ShadowText(
      {Key? key,
      required this.shadowTextName,
      required this.size,
      required this.letterSpacing,
      required this.color})
      : super(key: key);

  final String shadowTextName;
  final int size;
  final double letterSpacing;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        shadowTextName,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: size.toDouble(),
          shadows: [
            Shadow(
              color: Colors.blue.shade900.withOpacity(.3),
              offset: const Offset(2, 5),
              blurRadius: 4,
            ),
          ],
          textStyle: TextStyle(color: color, letterSpacing: letterSpacing),
        ),
      ),
    );
  }
}
