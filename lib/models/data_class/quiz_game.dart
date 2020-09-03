import 'package:akudo_demo/models/data_class/quiz.dart';
import 'package:flutter/foundation.dart';

class QuizGame{
  final List<Quiz> quizList;

  QuizGame({@required this.quizList}):assert(quizList!=null);
}