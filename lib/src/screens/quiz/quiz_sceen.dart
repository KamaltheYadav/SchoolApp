import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/src/controllers/questions_controller.dart';
import 'package:project1/src/screens/quiz/elevated_button.dart';
import 'package:project1/src/screens/quiz/progress_bar.dart';
import 'package:project1/src/screens/quiz/question_card.dart';
import 'package:project1/src/utils/appbar/appbar.dart';
import 'package:project1/src/utils/screen_size.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackButton(title: 'Quiz Screen'),
      body: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (_questionController) {
          return Column(
            children: [
              SizedBox(
                height: screenSize.screenHeight * 0.76,
                child: Stack(
                  children: [
                    Container(
                      height: screenSize.screenHeight * .23,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(20),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProgressBar(),
                          SizedBox(height: 15),
                          Text.rich(
                            TextSpan(
                              text:
                                  "Question ${_questionController.questionNumber}",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                              children: [
                                TextSpan(
                                  text:
                                      "/${_questionController.questions.length}",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: screenSize.screenWidth * 0.1 / 2,
                      child: Container(
                        height: screenSize.screenHeight * 0.6,
                        width: screenSize.screenWidth * 0.9,
                        child: QuestionCard(
                          question: _questionController.questions[
                              _questionController.questionNumber.value - 1],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Options

              // Buttons
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _questionController.isAnswered
                        ? ElevatedButtonWidget(
                            color: Theme.of(context).colorScheme.primary,
                            action: _questionController.nextQuestion,
                            title: 'NEXT',
                            textColor: Colors.white,
                          )
                        : ElevatedButtonWidget(
                            color: Theme.of(context).colorScheme.secondary,
                            action: _questionController.skipQuestion,
                            title: 'SKIP',
                            textColor: Colors.indigo.shade900,
                          ),

                    // ElevatedButtonWidget(
                    //     color: _questionController.isAnswered
                    //         ? AppColors.secondary
                    //         : AppColors.primary,
                    //     action: _questionController.isAnswered
                    //         ? (){}
                    //         : _questionController.nextQuestion,
                    //     title: 'SKIP',
                    //     textColor: _questionController.isAnswered
                    //         ? AppColors.primary
                    //         : AppColors.secondary),
                    // ElevatedButtonWidget(
                    //     color: _questionController.isAnswered
                    //         ? AppColors.primary
                    //         : AppColors.secondary,
                    //     action: _questionController.nextQuestion,
                    //     title: 'NEXT',
                    //     textColor: _questionController.isAnswered
                    //         ? AppColors.secondary
                    //         : AppColors.primary)
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
