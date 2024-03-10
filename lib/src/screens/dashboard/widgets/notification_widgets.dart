import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue, // You can change the color as needed
      child: Center(
        child: Text(
          'Notification',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white, // You can change the color as needed
          ),
        ),
      ),
    );
  }
}
