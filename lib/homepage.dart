import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E-Commerce Order Manager",
          style: GoogleFonts.lato(),
        ),
      ),
      body: Container(
        child: Text("Hej"),
      ),
    );
  }
}
