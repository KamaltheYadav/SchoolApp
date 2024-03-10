import 'package:flutter/material.dart';
import 'package:project1/src/utils/appbar/appbar.dart';
import 'package:project1/src/utils/build_body_decoration.dart';

class resultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: CustomBackButton(
        title: 'Result Screen',
      ),
      body: Container(
        decoration: buildBodyDecoration(context),
        padding: EdgeInsets.only(
          top: 10,
        ),
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            _buildResultsBlock("First", "98%", "654", "2"),
            _buildResultsBlock("Second", "98%", "654", "1"),
            _buildResultsBlock("Third", "98%", "654", "4"),
            _buildResultsBlock("Fourth", "98%", "654", "3"),
            _buildResultsBlock("Final", "98%", "654", "5"),
            // Add more fee blocks as needed
          ],
        ),
      ),
    );
  }

  Widget _buildResultsBlock(
    String terminal,
    String percentage,
    String totalMarks,
    String position,
  ) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
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
          Text(
            "$terminal Terminal",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Percentage",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(percentage),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Marks",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(totalMarks),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Position",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(position)
            ],
          ),
          SizedBox(height: 8.0),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Handle "See More" button action
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo.shade500,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "See More",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[50],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
