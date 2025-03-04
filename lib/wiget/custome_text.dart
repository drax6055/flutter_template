import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextStyle? textStyle;

  CustomTextWidget({
    required this.text,
    this.textAlign = TextAlign.left,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,  // Default alignment can be changed
      child: Text(
        text,
        textAlign: textAlign,
        style: textStyle ?? TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }
}
