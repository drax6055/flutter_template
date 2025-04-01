import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class text extends StatelessWidget {
  final String keyText;
  final TextStyle? style;

  const text(this.keyText, {this.style, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(tr(keyText), style: style);
  }
}
