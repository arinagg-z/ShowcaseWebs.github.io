import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart/constants.dart';

class FeedContent extends StatelessWidget {
  final String mon;
  final String date;
  final String content;

  FeedContent({
    super.key,
    required this.mon,
    required this.date,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${mon} ${date}, 2023",
              style: BodyStyle4,
            ),
            Text("${content}",
                style: GoogleFonts.ptSans(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
          ]),
    );
  }
}
