import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Row(
        children: [
          CustomScrollView(
            slivers: [
              Row(
                children: [
                  Image(image: AssetImage("images/woman.png")),
                  Text("Kamal Yadav")
                ],
              )
            ],
          )
        ],
      )),
    );
  }
}
