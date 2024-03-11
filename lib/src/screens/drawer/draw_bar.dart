import 'package:flutter/material.dart';

class DrawBar extends StatefulWidget {
  final Function(bool) onDarkModeChanged;

  DrawBar({required this.onDarkModeChanged});
  @override
  _DrawBarState createState() => _DrawBarState();
}

class _DrawBarState extends State<DrawBar> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 255,
      backgroundColor: Theme.of(context).colorScheme.primary,
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
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
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
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Theme.of(context).brightness == Brightness.dark
                          ? Icons.wb_sunny
                          : Icons.brightness_3,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    onPressed: () {
                      setState(() {
                        Theme.of(context).brightness == Brightness.light
                            ? isDarkMode = !isDarkMode
                            : isDarkMode = isDarkMode;

                        widget.onDarkModeChanged(isDarkMode);
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
}
