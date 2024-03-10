import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project1/src/utils/build_body_decoration.dart';
import 'package:project1/src/utils/appbar/appbar.dart';

void main() {
  runApp(MaterialApp(
    home: timeTableScreen(),
  ));
}

class timeTableScreen extends StatefulWidget {
  @override
  _timeTableScreenState createState() => _timeTableScreenState();
}

class _timeTableScreenState extends State<timeTableScreen> {
  String selectedDay = ''; // Default selected day is Sunday
  Map<String, List<Map<String, String>>> timetableData = {
    'Sun': [
      {
        'subject': 'Computer Science',
        'time': '07:00 - 07:45',
        'teacher': 'Swikriti Napit',
        'period': 'Period 1',
      },
      {
        'subject': 'Mathematics',
        'time': '08:00 - 08:45',
        'teacher': 'Khadak Shahi',
        'period': 'Period 2',
      },
      {
        'subject': 'Physics',
        'time': '10:00 - 10:45',
        'teacher': 'David Brown',
        'period': 'Period 3',
      },
      // Add data for Sunday here
    ],
    'Mon': [
      {
        'subject': 'Mathematics',
        'time': '08:00 - 08:45',
        'teacher': 'Khadak Shahi',
        'period': 'Period 1',
      },
      {
        'subject': 'Physics',
        'time': '10:00 - 10:45',
        'teacher': 'David Brown',
        'period': 'Period 2',
      },
      {
        'subject': 'Computer Science',
        'time': '07:00 - 07:45',
        'teacher': 'Swikriti Napit',
        'period': 'Period 3',
      },
      // Add data for Monday here
    ],
    'Tue': [
      {
        'subject': 'History',
        'time': '09:00 - 09:45',
        'teacher': 'Jane Smith',
        'period': 'Period 1',
      },
      {
        'subject': 'Mathematics',
        'time': '08:00 - 08:45',
        'teacher': 'Khadak Shahi',
        'period': 'Period 2',
      },
      {
        'subject': 'Physics',
        'time': '10:00 - 10:45',
        'teacher': 'David Brown',
        'period': 'Period 3',
      },
      {
        'subject': 'Computer Science',
        'time': '07:00 - 07:45',
        'teacher': 'Swikriti Napit',
        'period': 'Period 4',
      },
      {
        'subject': 'Physics',
        'time': '10:00 - 10:45',
        'teacher': 'David Brown',
        'period': 'Period 1',
      },
      {
        'subject': 'Mathematics',
        'time': '08:00 - 08:45',
        'teacher': 'Khadak Shahi',
        'period': 'Period 1',
      },
      {
        'subject': 'Computer Science',
        'time': '07:00 - 07:45',
        'teacher': 'Swikriti Napit',
        'period': 'Period 1',
      },
      // Add data for Tuesday here
    ],
    'Wed': [
      {
        'subject': 'Physics',
        'time': '10:00 - 10:45',
        'teacher': 'David Brown',
        'period': 'Period 1',
      },
      {
        'subject': 'Mathematics',
        'time': '08:00 - 08:45',
        'teacher': 'Khadak Shahi',
        'period': 'Period 1',
      },
      {
        'subject': 'Computer Science',
        'time': '07:00 - 07:45',
        'teacher': 'Swikriti Napit',
        'period': 'Period 1',
      },
      // Add data for Wednesday here
    ],
    'Thu': [
      {
        'subject': 'Physics',
        'time': '10:00 - 10:45',
        'teacher': 'David Brown',
        'period': 'Period 1',
      },
      {
        'subject': 'Mathematics',
        'time': '08:00 - 08:45',
        'teacher': 'Khadak Shahi',
        'period': 'Period 1',
      },
      {
        'subject': 'Computer Science',
        'time': '07:00 - 07:45',
        'teacher': 'Swikriti Napit',
        'period': 'Period 1',
      },
      // Add data for Wednesday here
    ],
    'Fri': [
      {
        'subject': 'Physics',
        'time': '10:00 - 10:45',
        'teacher': 'David Brown',
        'period': 'Period 1',
      },
      {
        'subject': 'Mathematics',
        'time': '08:00 - 08:45',
        'teacher': 'Khadak Shahi',
        'period': 'Period 1',
      },
      {
        'subject': 'Computer Science',
        'time': '07:00 - 07:45',
        'teacher': 'Swikriti Napit',
        'period': 'Period 1',
      },
      // Add data for Wednesday here
    ],
  };

  List<String> days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri'];

  @override
  void initState() {
    super.initState();
    // Set selectedDay to the current day when the widget is initialized
    selectedDay = DateFormat('E').format(DateTime.now());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: CustomBackButton(
        title: 'Time Table',
      ),
      body: buildTimetableBody(),
    );
  }

  Widget buildTimetableBody() {
    return Container(
      decoration: buildBodyDecoration(context),
      child: ClipRRect(
        child: Stack(
          children: [
            Column(
              children: [
                buildDaySelector(),
                SizedBox(height: 16.0),
                Expanded(
                  child: buildTimetableListView(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDaySelector() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      height: 37.0,
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          // color: Color.fromRGBO(13, 141, 144, 1.0),
          color: Theme.of(context).colorScheme.primary,
          width: 2.0,
        ),
      ),
      child: buildDayButtons(),
    );
  }

  Row buildDayButtons() {
    if (!timetableData.containsKey(selectedDay)) {
      selectedDay = days[0];
    }
    return Row(
      children: days.map((day) {
        final isActive = day == selectedDay;
        return Expanded(
          child: buildDayButton(day, isActive),
        );
      }).toList(),
    );
  }

  Widget buildDayButton(String day, bool isActive) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedDay = day;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isActive
              ? Theme.of(context).colorScheme.primary
              : Colors.transparent,
          border: Border.all(
            color: isActive
                ? Theme.of(context).colorScheme.primary
                : Color.fromARGB(0, 27, 23, 23),
            width: 2.0,
          ),
          borderRadius: isActive ? BorderRadius.circular(10.0) : null,
        ),
        alignment: Alignment.center,
        child: Text(
          day,
          style: TextStyle(
            fontSize: 16.0,
            color: isActive
                ? Theme.of(context).colorScheme.secondary
                : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget buildTimetableListView() {
    List<Map<String, String>> timetable = timetableData[selectedDay] ?? [];
    // if (!timetableData.containsKey(selectedDay)) {
    //   selectedDay = 'Sun';
    //   timetable = timetableData[selectedDay] ?? [];
    // }

    // If the timetable for the selected day is not available, set selectedDay to 'Sun'

    return ListView.separated(
      itemCount: timetable.length,
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: 16.0),
      itemBuilder: (context, index) {
        final data = timetable[index];
        return buildTimetableCard(data);
      },
    );
  }

//Period Card
  Widget buildTimetableCard(Map<String, String> data) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Colors.grey,
            width: 0.0001,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['subject'] ?? 'No Subject',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
              SizedBox(height: 15.0),
              Text(
                data['time'] ?? 'No Time',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),
              Divider(),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data['teacher'] ?? '',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    data['period'] ?? '',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: const Center(
        child: Text('Home Screen Content'),
      ),
    );
  }
}
