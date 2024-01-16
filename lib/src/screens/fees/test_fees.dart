import 'package:flutter/material.dart';
import 'package:project1/src/utils/color.dart';

class CustomBackButton extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  CustomBackButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: AppColors.primary,
      title: Text(
        title ?? 'Default Title',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
