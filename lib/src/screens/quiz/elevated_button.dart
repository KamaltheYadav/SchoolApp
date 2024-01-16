import 'package:flutter/material.dart';
import 'package:project1/src/utils/screen_size.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final Color color;
  final Color textColor;
  final VoidCallback action;
  final String title;

  const ElevatedButtonWidget({
    Key? key,
    required this.color,
    required this.action,
    required this.title,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.screenWidth * .9,
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 5,
                spreadRadius: 3,
                color: Colors.grey.withOpacity(.4))
          ],
        ),
        child: ElevatedButton(
          onPressed: action,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: EdgeInsets.symmetric(
                // horizontal: screenSize.screenWidth * .5,
                ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              // side: BorderSide(color: Colors.indigo), // Border color
            ),
          ),
          child: Text(
            title,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
