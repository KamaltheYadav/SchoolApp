// fee_details.dart

import 'package:flutter/material.dart';
import 'package:project1/src/screens/fees/fees_items.dart';
import 'package:project1/src/utils/build_body_decoration.dart';
import 'package:project1/src/utils/appbar/appbar.dart';
import 'package:project1/src/utils/screen_size.dart';

class FeeDetailsPage extends StatelessWidget {
  final String receiptNo;
  final String month;
  final String paymentDate;
  final String status;
  final String totalAmount;

  FeeDetailsPage({
    required this.receiptNo,
    required this.month,
    required this.paymentDate,
    required this.status,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: CustomBackButton(title: '$month Fees'),
      body: Container(
        decoration: buildBodyDecoration(context),
        height: screenSize.screenHeight,
        width: screenSize.screenWidth,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Receipt No. $receiptNo",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '$month',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              feesItems(title: 'Month', data: month),
              feesItems(title: 'Month', data: month),
              feesItems(title: 'Month', data: month),
              feesItems(title: 'Month', data: month),
              feesItems(title: 'Month', data: month),
              feesItems(title: 'Month', data: month),
              feesItems(title: 'Month', data: month),
              SizedBox(height: 8.0),
              Text(
                "Payment Date: $paymentDate",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Status: $status",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: status == "Paid" ? Colors.green : Colors.red,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Total Fees: Rs $totalAmount",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
