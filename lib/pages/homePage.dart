import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xpert/common_widgets/fancyAppBar.dart';
import 'package:xpert/common_widgets/searchWidget.dart';
import 'package:xpert/common_widgets/topPeople.dart';
import 'package:xpert/common_widgets/trendingCategories.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            fit: StackFit.loose,
            children: [
              Positioned(
                right: -70,
                top: -55,
                child: Icon(
                  CupertinoIcons.add_circled,
                  color: Colors.white12,
                  size: 140,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    FancyAppBar(),
                    SearchWidget(),
                    TopPeople(
                      label: "WORLD TOP 30",
                    ),
                    TrendingCategoriesWidget(),
                    TopPeople(label: "INDIA TOP 15"),
                    TopPeople(label: "KOLKATA TOP 10"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
