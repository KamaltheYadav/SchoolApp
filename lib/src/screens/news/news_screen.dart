import 'package:flutter/material.dart';
import 'package:project1/src/utils/build_body_decoration.dart';
import 'package:project1/src/utils/appbar/appbar.dart';
import 'package:project1/src/utils/screen_size.dart';

class newsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: CustomBackButton(
        title: 'News Screen',
      ),
      body: Container(
        decoration: buildBodyDecoration(context),
        child: Container(
          // width: MediaQuery.of(context).size.width,
          width: screenSize.screenWidth,
          height: screenSize.screenHeight,
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
