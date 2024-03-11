import 'package:flutter/material.dart';

class mainIcon extends StatelessWidget {
  const mainIcon({
    super.key,
    required this.imgData,
    required this.titles,
    required this.index,
  });

  final List imgData;
  final List titles;
  final int index;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(0, 2),
            blurRadius: 7,
          ),
        ],
      ),
      child: Container(
        child: Column(
          children: [
            Container(
              // height: height * 0.1,
              // width: width * 0.50,

              child: Image.asset(
                imgData[index],
                width: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                titles[index],
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
