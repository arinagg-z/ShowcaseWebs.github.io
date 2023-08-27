import 'package:flutter/material.dart';
import 'package:portfolio/utils.dart/constants.dart';

class TextInputWidget extends StatelessWidget {
  TextInputWidget({
    super.key,
    required this.controller,
    required this.dimensions,
    required this.text,
    required this.hinttext,
    this.maxline,
    this.inputType,
  });

  final TextEditingController controller;
  final double dimensions;
  final String text;
  final String hinttext;
  final int? maxline;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dimensions,
      width: dimensions * 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: BodyStyle3,
          ),
          TextField(
            maxLines: maxline,
            keyboardType: inputType,
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: hinttext),
          )
        ],
      ),
    );
  }
}
