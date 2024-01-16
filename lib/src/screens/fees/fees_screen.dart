import 'package:flutter/material.dart';
import 'package:project1/src/screens/fees/fees_items.dart';
import 'package:project1/src/utils/build_body_decoration.dart';
import 'package:project1/src/utils/appbar/appbar.dart';
import 'package:project1/src/utils/color.dart';

class feesScreen extends StatefulWidget {
  @override
  State<feesScreen> createState() => _feesScreenState();
}

class _feesScreenState extends State<feesScreen> {
  bool showDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: CustomBackButton(
        title: 'Fees Screen',
      ),
      body: Container(
        decoration: buildBodyDecoration(),
        padding: EdgeInsets.only(
          top: 10,
        ),
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            _buildFeesBlock(
              "98766",
              "January",
              "8 Nov 2023",
              "Pending",
              "2500",
            ),

            _buildFeesBlock(
              "98767",
              "February",
              "15 Nov 2023",
              "Paid",
              "2500",
            ),
            _buildFeesBlock(
              "98768",
              "March",
              "22 Nov 2023",
              "Pending",
              "2500",
            ),
            // Add more fee blocks as needed
            _buildTotalFees("5000"), // Add the total fees section here
          ],
        ),
      ),
    );
  }

  Widget _buildFeesBlock(
    String receiptNo,
    String month,
    String paymentDate,
    String status,
    String totalAmount,
  ) {
    return Builder(builder: (BuildContext context) {
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
            //Receipt No:
            Text(
              "Receipt No. $receiptNo",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),

            feesItems(title: 'Month', data: month), //Month

            feesItems(title: 'Payment Date', data: paymentDate), //Payment
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
                  status,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: status == "Paid" ? Colors.green : Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4),
            feesItems(
              title: 'Total Fees',
              data: 'Rs ' + totalAmount,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 16.0),
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
      );
    });
  }

  Widget _buildTotalFees(String totalAmount) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
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
            "Total Fees",
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
                "Total Amount",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Rs " + totalAmount,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
