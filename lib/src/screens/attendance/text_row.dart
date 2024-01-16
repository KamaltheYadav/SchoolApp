import 'package:flutter/material.dart';

class textRow extends StatelessWidget {
  final dynamic color;
  final String data;
  final String text;
  const textRow({
    super.key,
    required this.color,
    required this.data,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 10, // Set the desired height
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border(
          top: BorderSide(
            color: color, // Left border color
            width: 2.0, // Left border width
          ),
          bottom: BorderSide(
            color: color, // Left border color
            width: 2.0, // Left border width
          ),
          left: BorderSide(
            color: color, // Left border color
            width: 20.0, // Left border width
          ),
          right: BorderSide(
            color: color, // Left border color
            width: 2.0, // Left border width
          ),
          // Border width
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            SizedBox(width: 10), // Adjust spacing as needed
            Container(
              decoration: BoxDecoration(
                color: color.shade100,
                borderRadius: BorderRadius.circular(50.0), // Set border radius
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: 8.0, vertical: 4.0), // Adjust padding as needed
              child: Text(
                data,
                style: TextStyle(
                  color: color, // Text color for red background
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
