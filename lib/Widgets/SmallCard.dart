import 'package:flutter/material.dart';

// Zahid Ali Regestration Number 2018-CS-136

class SmallCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  SmallCard({this.title, this.description, this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.only(left: 130, right: 10, top: 10, bottom: 10),
      elevation: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
            child: Text(
              "This is dragable Card",
              style:
                  TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 10, bottom: 10),
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
