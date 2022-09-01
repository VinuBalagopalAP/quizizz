// class QuizModel {
//   final String question;
//   final Map<int, String> options;
//   final String answer;

//   QuizModel({
//     required this.question,
//     required this.options,
//     required this.answer,
//   });

//   static fromJson(question) {}
// }

import 'dart:convert';

class QuestionModel {
  QuestionModel({
    required this.id,
    required this.question,
    required this.options,
    required this.answer,
  });

  final int id;
  final String question;
  final List<String> options;
  final String answer;

  factory QuestionModel.fromRawJson(String str) =>
      QuestionModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory QuestionModel.fromJson(Map<String, dynamic> json) => QuestionModel(
        id: json["id"],
        question: json["question"],
        options: List<String>.from(json["options"].map((x) => x)),
        answer: json["answer"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "question": question,
        "options": List<dynamic>.from(options.map((x) => x)),
        "answer": answer,
      };
}
