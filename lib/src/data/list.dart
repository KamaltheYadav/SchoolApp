import 'package:project1/src/screens/assignmet/assignment_screen.dart';
import 'package:project1/src/screens/attendance/attendance.dart';
import 'package:project1/src/screens/bus/bus_screen.dart';
import 'package:project1/src/screens/calender/calender_screen.dart';
import 'package:project1/src/screens/events/events_screen.dart';
import 'package:project1/src/screens/fees/fees_screen.dart';
import 'package:project1/src/screens/gallery/gallery_screen.dart';
import 'package:project1/src/screens/library/library_screen.dart';
import 'package:project1/src/screens/news/news_screen.dart';
import 'package:project1/src/screens/quiz/quiz_sceen.dart';
import 'package:project1/src/screens/result/result_screen.dart';
import 'package:project1/src/screens/time_table/time_table_screen.dart';

List imgData = [
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
];

List titles = [
  "Assignment",
  "Attendance",
  "Results",
  "Fees",
  "Timetable",
  "Quiz",
  "Calender",
  "Events",
  "Gallery",
  "News",
  "Library",
  "Bus",
];

List page = [
  AssignmentScreen(),
  AttendanceScreen(),
  resultScreen(),
  feesScreen(),
  timeTableScreen(),
  QuizScreen(),
  CalenderScreen(),
  eventsScreen(),
  GalleryScreen(),
  newsScreen(),
  libraryScreen(),
  busScreen(),
];
