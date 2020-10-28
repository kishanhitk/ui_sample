import 'package:flutter/material.dart';
import 'package:xpert/common_widgets/labelText.dart';
import 'package:xpert/common_widgets/peopleCart.dart';

class TopPeople extends StatelessWidget {
  const TopPeople({
    Key key,
    this.label,
  }) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LabelText(
            label: label.toUpperCase(),
          ),
          Container(
            height: 135,
            child: Flexible(
              fit: FlexFit.loose,
              flex: 1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 20,
                      right: 15,
                    ),
                    child: PeopleCard(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
