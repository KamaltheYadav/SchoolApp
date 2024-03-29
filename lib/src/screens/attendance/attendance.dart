import 'package:flutter/material.dart';
import 'package:project1/src/data/attendance_data.dart';
import 'package:project1/src/screens/attendance/text_row.dart';
import 'package:project1/src/utils/appbar/appbar.dart';
import 'package:project1/src/utils/build_body_decoration.dart';
import 'package:clean_nepali_calendar/clean_nepali_calendar.dart';
import 'package:project1/src/utils/screen_size.dart';

class AttendanceScreen extends StatefulWidget {
  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  late NepaliCalendarController _calendarController;
  @override
  void initState() {
    super.initState();
    _calendarController = NepaliCalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: CustomBackButton(title: 'Attendance'),
      //  appBar: CustomBackButton(
      //     days: ['ATTENDANCE', 'CALENDER'],
      //     selectedDay: 'ATTENDANCE',
      //   ),
      body: Container(
        decoration: buildBodyDecoration(context),
        child: Container(
          width: screenSize.screenWidth,
          height: screenSize.screenHeight,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        CleanNepaliCalendar(
                          firstDate: NepaliDateTime(2000),
                          lastDate: NepaliDateTime(2100),
                          dateCellBuilder: (isToday,
                              isSelected,
                              isDisabled,
                              date,
                              text,
                              buttonText,
                              calendarStyle,
                              isWeekend) {
                            final day = date.day.toString();
                            print(absentDates.contains(date));
                            bool isAbsentDate = absentDates.contains(date);
                            // print(absentDates.contains(date));

                            return Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: isSelected
                                      ? Theme.of(context).colorScheme.primary
                                      : Colors.transparent,
                                  width: isSelected ? 2.0 : 0.0,
                                ),
                                color: isToday
                                    ? Theme.of(context).colorScheme.primary
                                    : (isSelected
                                        ? Colors.transparent
                                        : (isAbsentDate
                                            ? Colors
                                                .red // Mark as absent in red color
                                            : null)), // Transparent background for selected day
                              ),
                              child: Center(
                                child: Text(
                                  '$day',
                                  style: TextStyle(
                                    color: isToday
                                        ? Colors.white
                                        : (isWeekend
                                            ? Colors.deepOrange
                                            : (isAbsentDate
                                                ? Colors.red
                                                : null)),
                                  ),
                                ),
                              ),
                            );
                          },
                          // enableVibration: true,
                          headerBuilder: (decoration, height, nextMonthHandler,
                              prevMonthHandler, currentDate) {
                            String formattedMonth =
                                NepaliDateFormat.MMMM().format(currentDate);
                            String formattedyear =
                                NepaliDateFormat.y().format(currentDate);

                            return Container(
                              height: 40,
                              decoration: decoration,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () => prevMonthHandler(),
                                    icon: Icon(Icons.chevron_left),
                                  ),
                                  Text(
                                    formattedMonth + ' - ' + formattedyear,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () => nextMonthHandler(),
                                    icon: Icon(Icons.chevron_right),
                                  ),
                                ],
                              ),
                            );
                          },
                          headerDayType: HeaderDayType.halfName,

                          language: Language.english,

                          controller: _calendarController,
                        ),
                        textRow(
                          color: Colors.red,
                          data: '03',
                          text: 'Absent',
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        textRow(
                          color: Colors.indigo,
                          data: '10',
                          text: 'Holidays',
                        ),
                        SizedBox(height: 10),
                        Divider(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
