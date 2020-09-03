import 'package:akudo_demo/models/data_class/question.dart';
import 'package:akudo_demo/models/repository/question_repo.dart';
import 'package:flutter/cupertino.dart';

class Quiz {
  final int quizId;
  final String quizDescription;
  final String quizCategory;
  final QuestionsRepository questionRepo;

  Quiz(
      {@required this.quizId,
      @required this.quizCategory,
      @required this.quizDescription,
      @required this.questionRepo
      })
      : assert(quizId != null),
        assert(quizCategory != null),
        assert(quizDescription != null),
        assert(questionRepo!=null);
}
