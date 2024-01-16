// icons.dart
import 'package:flutter/material.dart';
import 'package:project1/src/utils/appbar/back_icon.dart';
import 'package:project1/src/utils/color.dart';

class CustomBackButton extends StatefulWidget implements PreferredSizeWidget {
  final List<String> days;
  String selectedDay;

  CustomBackButton({required this.days, required this.selectedDay});

  @override
  _CustomBackButtonState createState() => _CustomBackButtonState();

  @override
  Size get preferredSize => Size.fromHeight(80);
}

class _CustomBackButtonState extends State<CustomBackButton> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: AppColors.primary,
      leading: BackIcon(),
      title: buildDaySelector(),
    );
  }

  Widget buildDaySelector() {
    return Container(
      margin: EdgeInsets.only(left: 25.0),
      height: 25.0,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.indigo.shade300,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: buildDayButtons(),
    );
  }

  Row buildDayButtons() {
    return Row(
      children: widget.days.map((day) {
        final isActive = day == widget.selectedDay;
        return Expanded(
          child: buildDayButton(day, isActive),
        );
      }).toList(),
    );
  }

  Widget buildDayButton(String day, bool isActive) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.selectedDay = day;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? AppColors.secondary : Colors.transparent,
          borderRadius: isActive ? BorderRadius.circular(10.0) : null,
        ),
        alignment: Alignment.center,
        child: Text(
          day,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
            color: isActive ? AppColors.primary : AppColors.secondary,
          ),
        ),
      ),
    );
  }
}
