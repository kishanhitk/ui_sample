
import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  const LabelText({
    Key key,
    this.label,
  }) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        label.toUpperCase(),
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
    );
  }
}