import 'package:akudo_demo/util/custom_page_transition.dart';
import 'package:akudo_demo/view/home.dart';
import 'package:akudo_demo/view/screens/quiz_finished/quiz_finished_screen.dart';
import 'package:akudo_demo/view/screens/quiz_question/quiz_question_screen.dart';
import 'package:akudo_demo/view/screens/quiz_start/quiz_start_screen.dart';
import 'package:flutter/material.dart';


class Routes{

  static const home="/";
  static const quizStartScreen="/quiz_start_screen";
  static const quizQuestionScreen="/quiz_question_screen";
  static const quizFinishedScreen="/quiz_finished_screen";


  static Route<dynamic> generateRoute(RouteSettings routeSettings){

    switch(routeSettings.name){
      case home:
        return CustomPageTransition.getPageTransition(TransitionType.SLIDE, Home());
      case quizStartScreen:
        return MaterialPageRoute(builder: (context)=>QuizStartScreen());
      case quizQuestionScreen:
        return CustomPageTransition.getPageTransition(TransitionType.SCALE, QuizQuestionScreen());
      case quizFinishedScreen:
        return CustomPageTransition.getPageTransition(TransitionType.SCALE, QuizFinishedScreen());
    }
  }
}

