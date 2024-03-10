// icons.dart
import 'package:flutter/material.dart';
import 'package:project1/src/utils/appbar/back_icon.dart';

class CustomBackButton extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  CustomBackButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: Text(
        title ?? 'Default Title',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      leading: BackIcon(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
