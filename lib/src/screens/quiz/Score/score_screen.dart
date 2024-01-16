import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/src/controllers/questions_controller.dart';
import 'package:project1/src/screens/dashboard/dashboard.dart';
import 'package:project1/src/screens/time_table/time_table_screen.dart';
import 'package:project1/src/utils/build_body_decoration.dart';
import 'package:project1/src/utils/screen_size.dart';
import '../../../utils/color.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    // Access the QuestionController instance
    QuestionController questionController = Get.find<QuestionController>();

    // Access the numOfCorrectAns property
    int correctAnswers = questionController.numOfCorrectAns;
    int totalAttempted = questionController.totalNumber;
    RxInt skippedQuestions = questionController.skipNumber;

    double score = (correctAnswers / totalAttempted) * 100;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.indigo,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Quiz Completed!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Your Score:',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '$score%', // Display the calculated score
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Correct Answers: $correctAnswers / $totalAttempted',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Skipped Questions: $skippedQuestions',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Get.to(Dashboard());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.secondary,
                    padding: EdgeInsets.symmetric(
                      horizontal: screenSize.screenWidth * .18,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'GO BACK',
                    style: TextStyle(
                      color: Colors.indigo.shade900,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
