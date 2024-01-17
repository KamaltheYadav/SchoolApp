import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project1/src/screens/assignmet/assignment_screen.dart';
import 'package:project1/src/screens/attendance/attendance.dart';
import 'package:project1/src/screens/calender/calender_screen.dart';
import 'package:project1/src/screens/quiz/Score/score_screen.dart';
import 'package:project1/src/screens/quiz/quiz_sceen.dart';
import 'package:project1/src/utils/screen_size.dart';
import 'package:project1/src/screens/dashboard/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize.init(context: context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AttendanceScreen(),
      // home: Dashboard(),
    );
  }
}
