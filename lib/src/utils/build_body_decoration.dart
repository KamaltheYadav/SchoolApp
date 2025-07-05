// body.dart
import 'package:flutter/material.dart';

Decoration buildBodyDecoration(BuildContext context) {
  return BoxDecoration(
    color: Theme.of(context).colorScheme.secondary,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
    ),
  );
}
