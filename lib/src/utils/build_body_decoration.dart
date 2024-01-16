// body.dart
import 'package:flutter/material.dart';
import 'package:project1/src/utils/color.dart';

Decoration buildBodyDecoration() {
  return BoxDecoration(
    color: AppColors.secondary,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
    ),
  );
}
