import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: TextField(
        style: TextStyle(color: Colors.white12),
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.white24),
          contentPadding: EdgeInsets.all(0),
          filled: true,
          suffixIcon: CupertinoActivityIndicator(),
          fillColor: Colors.white12,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none),
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: Colors.white24,
          ),
        ),
      ),
    );
  }
}
