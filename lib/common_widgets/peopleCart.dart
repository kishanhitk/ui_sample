import 'package:flutter/material.dart';

class PeopleCard extends StatelessWidget {
  const PeopleCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(5),
      ),
      width: 180,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://avatars0.githubusercontent.com/u/41117038?s=460&u=a911d0593b95989947e7f41a423010944d06b01f&v=4'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Kishan Kumar",
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Hello I am an xper in UI/UX design.",
              style: TextStyle(
                color: Colors.white38,
              ),
            ),
          )
        ],
      ),
    );
  }
}
