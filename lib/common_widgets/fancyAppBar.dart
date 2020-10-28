import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FancyAppBar extends StatelessWidget {
  const FancyAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Discover",
          style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: ''),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            CupertinoIcons.add_circled,
            color: Colors.white54,
            size: 35,
          ),
        )
      ],
    );
  }
}
