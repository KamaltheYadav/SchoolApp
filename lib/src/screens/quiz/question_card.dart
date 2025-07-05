import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/src/controllers/questions_controller.dart';
import 'package:project1/src/data/questions.dart';
import 'package:project1/src/screens/quiz/option.dart';
import 'package:project1/src/utils/screen_size.dart';

class QuestionCard extends StatelessWidget {
  QuestionCard({
    super.key,
    required this.question,
  });

  final Question question;

  QuestionController _controller = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 5),

      child: Column(
        children: [
          Container(
            width: screenSize.screenWidth,
            height: 150,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 2,
                    spreadRadius: 3,
                    color: Colors.grey.withOpacity(.4))
              ],
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                question.question,
                style: TextStyle(
                    color: Colors.indigo.shade900,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 7.5),
          Expanded(
            child: ListView(
              children: [
                ...List.generate(
                    question.options.length,
                    (index) => option(
                          index: index,
                          text: question.options[index],
                          press: () => _controller.checkAns(question, index),
                        ))
              ],
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
