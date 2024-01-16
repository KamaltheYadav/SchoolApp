import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:project1/src/controllers/questions_controller.dart';
import 'package:project1/src/utils/screen_size.dart';

class option extends StatelessWidget {
  const option({
    super.key,
    required this.text,
    required this.index,
    required this.press,
  });
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qncontroller) {
          Color getTheRightColor() {
            if (qncontroller.isAnswered) {
              if (index == qncontroller.correctAns) {
                return Colors.green.shade900;
              } else if (index == qncontroller.selectedAns &&
                  qncontroller.selectedAns != qncontroller.correctAns) {
                return Colors.red;
              }
            }
            return Colors.grey;
          }

          IconData getTheRightIcon() {
            return getTheRightColor() == Colors.red ? Icons.close : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              // width: screenSize.screenWidth * 0.4,
              margin: EdgeInsets.only(
                top: 15,
                // left: screenSiz.screenWidth * 0.05,
              ),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: getTheRightColor() == Colors.grey
                      ? Colors.white
                      : getTheRightColor().withOpacity(.05),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: getTheRightColor()),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 2,
                        spreadRadius: .2,
                        color: Colors.grey.withOpacity(.4))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${index + 1}. $text",
                    style: TextStyle(
                        color: getTheRightColor(),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      color: getTheRightColor() == Colors.grey
                          ? Colors.transparent
                          : getTheRightColor(),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: getTheRightColor(),
                      ),
                    ),
                    child: getTheRightColor() == Colors.grey
                        ? null
                        : Icon(
                            getTheRightIcon(),
                            size: 16,
                            color: Colors.white,
                          ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
