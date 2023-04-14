import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cards extends StatelessWidget {
  Cards({super.key, required this.data});
  String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        data,
        style: GoogleFonts.averiaSerifLibre(
          fontSize: 20,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
