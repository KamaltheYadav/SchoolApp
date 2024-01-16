import 'package:flutter/material.dart';
import 'package:project1/src/screens/fees/fees_items.dart';
import 'package:project1/src/utils/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyFeesScreen());
  }
}

class MyFeesScreen extends StatefulWidget {
  @override
  State<MyFeesScreen> createState() => _MyFeesScreenState();
}

class _MyFeesScreenState extends State<MyFeesScreen> {
  bool showDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fees Screen'),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            feesItems(
              title: 'Title',
              data: '41000',
            ),
            feesItems(
              title: 'Title',
              data: '41000',
            ),
            feesItems(
              title: 'Title',
              data: '41000',
            ),
            feesItems(
              title: 'Title',
              data: '41000',
            ),
            if (showDetails)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  feesItems(
                    title: 'Title',
                    data: '41000',
                  ),
                  feesItems(
                    title: 'Title',
                    data: '41000',
                  ),
                  feesItems(
                    title: 'Title',
                    data: '41000',
                  ),
                ],
              ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showDetails = !showDetails;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    showDetails ? 'See Less' : 'See More',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[50],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    showDetails
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: Colors.indigo.shade50,
                    size: 27,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
