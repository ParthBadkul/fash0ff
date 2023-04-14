import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClothTile extends StatelessWidget {
  ClothTile(
      {super.key,
      required this.imageURL,
      required this.text,
      required this.data});
  String imageURL;
  String text;
  String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 20),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[800],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(imageURL),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18.0,
                top: 18,
              ),
              child: Text(
                text,
                style: GoogleFonts.bebasNeue(
                  fontSize: 18,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                data,
                style: GoogleFonts.besley(
                  color: Colors.grey[500],
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
