import 'package:akudo_demo/models/data_class/quiz.dart';
import 'package:akudo_demo/models/data_class/quiz_game.dart';
import 'package:akudo_demo/models/repository/quiz_repo.dart';
import 'package:flutter/material.dart';

class QuizProvider with ChangeNotifier{
  QuizGame _quizGame=QuizGame(
      quizList:QuizRepository().quizList
  );


  int _currentQuizId=1;
  int get currentQuizId=>_currentQuizId;

  List<Quiz> get quizList=>_quizGame.quizList;

  void setCurrentQuizId(int val){
    if(val<=_quizGame.quizList.length){
      _currentQuizId=val;

      print(_quizGame.quizList[_currentQuizId-1].questionRepo.hashCode);
      notifyListeners();
    }
  }


  Quiz getCurrentQuiz(){
    return _quizGame.quizList.firstWhere((element) => element.quizId==_currentQuizId);
  }









}