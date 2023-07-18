import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  String? ctName;

  IconData? ctIcon;

  Color? color;
  double? width;
  double? height;

  Cards(
      {super.key,
      required this.ctName,
      required this.ctIcon,
      required this.color,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      height: height,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text(ctName!), Icon(ctIcon)],
        ),
      ),
    );
  }
}
