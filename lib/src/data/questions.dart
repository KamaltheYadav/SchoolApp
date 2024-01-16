class Question {
  final int id, answer;
  final String question;
  late final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List Sample_data = [
  {
    "id": 1,
    "question":
        "Flutter is an open source UI software development kit created by .........",
    "option": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "When Google release Flutter.",
    "option": ['Jun 2017', 'July 2017', 'May 2019', 'Jun 2019'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "How many district are there in Nepal?",
    "option": ['75', '65', '77', '67'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "A memory location that holds a single letter or number.",
    "option": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2
  },
  {
    "id": 5,
    "question": "What command do you use to output data to the screen?",
    "option": ['Cin', 'Count>>', 'Cout', 'Output'],
    "answer_index": 2
  }
];
