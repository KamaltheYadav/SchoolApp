import 'package:flutter/material.dart';
import 'package:project1/src/utils/color.dart';

class DrawBar extends StatefulWidget {
  @override
  _DrawBarState createState() => _DrawBarState();
}

class _DrawBarState extends State<DrawBar> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 255,
      backgroundColor: AppColors.primary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.secondary,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                        color: AppColors.secondary,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Dark Mode',
                    style: TextStyle(
                      color: AppColors.secondary,
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      isDarkMode ? Icons.brightness_3 : Icons.wb_sunny,
                      color: AppColors.secondary,
                    ),
                    onPressed: () {
                      setState(() {
                        isDarkMode = !isDarkMode;
                        _updateTheme();
                      });
                    },
                  ),
                ],
              ),
              // Add other drawer items here
            ],
          ),
        ),
      ),
    );
  }

  void _updateTheme() {
    // Update the app theme based on the dark mode status
  }
}
