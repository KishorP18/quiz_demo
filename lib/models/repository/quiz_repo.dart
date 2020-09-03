import 'package:akudo_demo/models/data_class/quiz.dart';
import 'package:akudo_demo/models/repository/question_repo.dart';

class QuizRepository {
  List<Quiz> quizList=[
    Quiz(
        quizId: 1,
        quizCategory: 'Sports',
        quizDescription: 'Easy questions to begin with for Sports!!',
        questionRepo:QuestionsRepository()

    ),

    Quiz(
        quizId: 2,
        quizCategory: 'General Knowledge',
        quizDescription: 'Moderate questions to begin with for GK!!',
        questionRepo:QuestionsRepository()

    ),

    Quiz(
      quizId: 3,
      quizCategory: 'Miscellaneous',
      quizDescription: 'Difficult questions to begin with for Misc!!',
      questionRepo:QuestionsRepository(),

    ),


  ];




//  static Map<int, List<int>> quizQuestions = {
//    1: [1, 2]
//  };
//
//  static int currentQuestionIndex;
//  static int currentQuizId;
//
//  bool setCurrentQuizId(int quizId) {
//    currentQuizId = quizId;
//    currentQuestionIndex = 0;
//    return true;
//  }
//
//  Quiz getQuiz(int quizId) {
//    return quizMap[quizId];
//  }
//
//  int currentQuestionId() {
//    return quizQuestions[currentQuizId][currentQuestionIndex];
//  }
//
//  bool isLastQuestion() {
//    return currentQuestionIndex == quizQuestions[currentQuizId].length - 1;
//  }
//
//  int getNextQuestionId() {
//    if (isLastQuestion()) return -1;
//    return quizQuestions[currentQuizId][currentQuestionIndex + 1];
//  }
//
//  bool isFirstQuestion() {
//    return currentQuestionIndex == 0;
//  }
//
//  int getPreviousQuestionId() {
//    if (isFirstQuestion()) return -1;
//    return quizQuestions[currentQuizId][currentQuestionIndex - 1];
//  }
//
//  bool setCurrentQuestion(int questionId) {
//    if (quizQuestions[currentQuizId].indexOf(questionId) == -1) return false;
//    currentQuestionIndex = quizQuestions[currentQuizId].indexOf(questionId);
//    return true;
//  }
}
