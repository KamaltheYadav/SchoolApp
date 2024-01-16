import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/src/data/questions.dart';
import 'package:project1/src/screens/quiz/Score/score_screen.dart';

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  Animation get animation => this._animation;

  List<Question> allQuestions = Sample_data.map(
    (question) => Question(
      id: question['id'],
      question: question['question'],
      options: List<String>.from(question['option']),
      answer: question['answer_index'],
    ),
  ).toList();

  List<Question> get questions =>
      this.allQuestions; // Change _questions to allQuestions

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _correctAns;
  int get correctAns => this._correctAns;
  late int _totalNumber;
  int get totalNumber => this._totalNumber;

  late RxInt _skipNumber = 0.obs;
  RxInt get skipNumber => this._skipNumber;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  late int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 30), vsync: this);
    _animation = IntTween(begin: 0, end: 1000).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward();
    super.onInit();
  }

  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    _animationController.stop();
    update();
  }

  nextQuestion() {
    _isAnswered = false;
    _selectedAns = -1;

    // Reset correct answer for the next question
    _correctAns = -1;

    _animationController.reset();
    _animationController.forward();

    _totalNumber++;
    // Check if all questions are answered (You can add your logic here)

    if (_questionNumber.value < allQuestions.length) {
      // Change _questions to allQuestions
      _questionNumber.value++;
      _animationController.reset();
      _animationController.forward();
    } else {
      // Handle the end of the quiz or navigate to a different screen
      // For example, you can show the final score or navigate to a result screen
      Get.to(ScoreScreen());
    }

    update();
  }

  skipQuestion() {
    _isAnswered = false;
    _selectedAns = -1;

    // Reset correct answer for the next question
    _correctAns = -1;

    _animationController.reset();
    _animationController.forward();

    _skipNumber++;
    // Check if all questions are answered (You can add your logic here)

    if (_questionNumber.value < allQuestions.length) {
      // Change _questions to allQuestions
      _questionNumber++;
      _animationController.reset();
      _animationController.forward();
    } else {
      // Handle the end of the quiz or navigate to a different screen
      // For example, you can show the final score or navigate to a result screen
      Get.to(ScoreScreen());
    }

    update();
  }

  void reset() {
    _isAnswered = false;
    _selectedAns = -1;
    _questionNumber.value = 1;
    _skipNumber.value = 0;
    _totalNumber = 0;
    _correctAns = -1;
    _numOfCorrectAns = 0;
    _animationController.reset();
    _animationController.forward();

    update();
  }
}
