import 'package:flutter/material.dart';
import 'package:xpert/common_widgets/labelText.dart';

class TrendingCategoriesWidget extends StatelessWidget {
  const TrendingCategoriesWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabelText(
          label: "TRENDING CATEGORIES",
        ),
        TrendingChips(),
      ],
    );
  }
}
class TrendingChips extends StatefulWidget {
  TrendingChips({
    Key key,
  }) : super(key: key);

  @override
  _TrendingChipsState createState() => _TrendingChipsState();
}

class _TrendingChipsState extends State<TrendingChips> {
  List<String> _topics;

  List<String> _filters;
  @override
  void initState() {
    super.initState();
    _filters = <String>[];
    _topics = <String>[
      'UI DESIGN',
      'MARKETING',
      'MANAGEMENT',
      'Flutter Developer',
      'Technology',
      'Firebase',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        bottom: 20,
        right: 15,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Wrap(
          children: topicWidgets.toList(),
        ),
      ),
    );
  }

  Iterable<Widget> get topicWidgets sync* {
    for (String topic in _topics) {
      yield Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: FilterChip(
          visualDensity: VisualDensity.compact,
          labelPadding: EdgeInsets.symmetric(
            horizontal: 5,
          ),
          showCheckmark: false,
          selectedColor: Colors.deepOrange,
          padding: EdgeInsets.zero,
          backgroundColor: Colors.grey.shade900,
          label: Text(
            topic.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
          selected: _filters.contains(topic),
          onSelected: (bool selected) {
            setState(() {
              if (selected) {
                _filters.add(topic);
              } else {
                _filters.removeWhere((String name) {
                  return name == topic;
                });
              }
            });
          },
        ),
      );
    }
  }
}