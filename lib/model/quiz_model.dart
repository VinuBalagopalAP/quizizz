class QuizModel {
  final String question;
  final Map<int, String> options;
  final String answer;

  QuizModel({
    required this.question,
    required this.options,
    required this.answer,
  });

  static fromJson(question) {}
}
