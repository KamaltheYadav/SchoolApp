import 'package:flutter/material.dart';
import 'package:project1/src/utils/build_body_decoration.dart';
import 'package:project1/src/utils/appbar/appbar.dart';

class eventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: CustomBackButton(
        title: 'Events Screen',
      ),
      body: Container(
        decoration: buildBodyDecoration(context),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
            ),
          ),
        ),
      ),
    );
  }
}
