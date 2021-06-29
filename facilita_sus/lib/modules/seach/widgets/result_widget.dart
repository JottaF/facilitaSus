import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultWidget extends StatelessWidget {
  final String ubsName;
  final VoidCallback onTap;

  const ResultWidget({
    Key? key,
    required this.ubsName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 90,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFAAAACC).withOpacity(.25),
                blurRadius: 10,
                offset: Offset(5, 5),
              ),
              BoxShadow(
                color: Color(0xFFAAAACC).withOpacity(.5),
                blurRadius: 20,
                offset: Offset(10, 10),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              ubsName,
              style: GoogleFonts.lato(
                color: Color(0xFF828282),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
