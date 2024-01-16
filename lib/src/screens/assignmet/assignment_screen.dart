import 'package:flutter/material.dart';
import 'package:project1/src/utils/appbar/appbar.dart';
import 'package:project1/src/utils/build_body_decoration.dart';
import 'package:project1/src/utils/color.dart';

class assignmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: CustomBackButton(
        title: 'Assignment Screen',
      ),
      body: Container(
        decoration: buildBodyDecoration(),
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
