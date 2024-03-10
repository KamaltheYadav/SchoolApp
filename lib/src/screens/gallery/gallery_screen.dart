import 'package:flutter/material.dart';
import 'package:project1/src/utils/build_body_decoration.dart';
import 'package:project1/src/utils/appbar/appbar.dart';

class GalleryScreen extends StatelessWidget {
  final List<String> imagePaths = [
    "images/assignment.gif",
    "images/attendance.png",
    "images/result.png",
    "images/fees.png",
    "images/timetable.png",
    "images/quiz.png",
    "images/calender.png",
    "images/events.png",
    "images/gallery.png",
    "images/news.png",
    "images/library.png",
    "images/bus.png",
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: CustomBackButton(
        title: 'Gallery Screen',
      ),
      body: Container(
        decoration: buildBodyDecoration(context),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: imagePaths.length,
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: GridTile(
                  child: Image.asset(
                    imagePaths[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
