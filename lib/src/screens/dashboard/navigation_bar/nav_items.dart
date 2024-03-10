import 'package:flutter/material.dart';

class navigationItems extends StatelessWidget {
  final dynamic IconName;
  final dynamic selectIcon;
  final String label;
  const navigationItems({
    super.key,
    required this.IconName,
    required this.label,
    this.selectIcon,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      selectedIcon: Icon(
        selectIcon ?? IconName,
        color: Theme.of(context).colorScheme.secondary,
        size: 26,
      ),
      icon: Icon(IconName),
      label: label,
    );
  }
}
