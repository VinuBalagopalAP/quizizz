class QuestionModel {
  final String question;
  final Map<int, String> options;
  final String answer;

  QuestionModel({
    required this.question,
    required this.options,
    required this.answer,
  });
}
