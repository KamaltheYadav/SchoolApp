import 'package:flutter/material.dart';
import 'package:project1/src/data/assignment_data.dart';
import 'package:project1/src/screens/assignmet/assignment_items.dart';
import 'package:project1/src/utils/build_body_decoration.dart';
import 'package:project1/src/utils/appbar/appbar.dart';

class AssignmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: CustomBackButton(
        title: 'Assignment Screen',
      ),
      body: Container(
        decoration: buildBodyDecoration(context),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(vertical: 10),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.0),

                  // Use ListView.builder for dynamic assignment cards
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: assignment.length,
                    itemBuilder: (context, index) {
                      AssignmentData currentItem = assignment[index];
                      return Container(
                        margin: EdgeInsets.only(bottom: 30),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
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
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(
                                        .2), // You can customize the color
                              ),
                              child: Text(
                                currentItem.subjectName,
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primary, // Text color
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),

                            Text(
                              currentItem.topicName,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.0),

                            assignmentItems(
                              title: 'Assign Date',
                              data: currentItem.assignDate,
                            ),
                            assignmentItems(
                              title: 'Last Date',
                              data: currentItem.lastDate,
                            ),
                            SizedBox(height: 4),

                            //Status
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Status",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  currentItem.status,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: currentItem.status == "Submitted"
                                        ? Color.fromARGB(255, 6, 158, 21)
                                        : currentItem.status == "Not Submitted"
                                            ? Colors.red
                                            : Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),

                            SizedBox(height: 16.0),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
