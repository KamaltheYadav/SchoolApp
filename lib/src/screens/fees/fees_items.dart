import 'package:flutter/material.dart';

class feesItems extends StatelessWidget {
  final dynamic title;
  final dynamic data;
  final dynamic fontWeight;
  const feesItems({
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
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            data,
            style: TextStyle(fontWeight: fontWeight ?? FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
