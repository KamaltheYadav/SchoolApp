import 'package:flutter/material.dart';
import 'package:project1/src/utils/color.dart';

class assignmentItems extends StatelessWidget {
  final dynamic title;
  final dynamic data;
  final dynamic fontWeight;
  const assignmentItems({
    super.key,
    required this.title,
    required this.data,
    this.fontWeight,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            data,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
