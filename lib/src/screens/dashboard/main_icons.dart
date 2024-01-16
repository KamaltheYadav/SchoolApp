import 'package:flutter/material.dart';

class mainIcon extends StatelessWidget {
  const mainIcon({
    super.key,
    required this.imgData,
    required this.titles,
    required this.index,
  });

  final List imgData;
  final List titles;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          imgData[index],
          width: 60,
        ),
        Divider(
          thickness: 2,
        ),
        Text(
          titles[index],
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
