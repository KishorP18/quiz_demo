import 'package:akudo_demo/models/repository/question_repo.dart';
import 'package:akudo_demo/util/dependency_injection.dart';
import 'package:akudo_demo/view_models/quiz_provider.dart';
import 'package:flutter/material.dart';

class QuestionProvider with ChangeNotifier{


    //Accessing  currentQuizId and curentQuestion Id from QuizProvider
    int _currentQuestionId;
    int get currentQuestionId=>_currentQuestionId;




    QuestionsRepository _currentQuestionRepo;
    QuestionsRepository get currentQuestionRepo=>_currentQuestionRepo;

   void loadCurrentQuestionRepo(){
     _currentQuestionRepo=locator<QuizProvider>().getCurrentQuiz().questionRepo;
     setCurrentQuestionId(_currentQuestionRepo.currentQuestionId);
   }

   void setCurrentQuestionId(int val){
     _currentQuestionId=val;
     _currentQuestionRepo.setCurrentQuestionId(val);
     notifyListeners();
   }




    void tapToNextQuestion(){
     if(_currentQuestionId<currentQuestionRepo.questionMap.length){
        _currentQuestionId++;
        _currentQuestionRepo.setCurrentQuestionId(_currentQuestionId);
        notifyListeners();
     }
    }


    void tapToPreviousQuestion(){
     if(_currentQuestionId>0){
       _currentQuestionId--;
       _currentQuestionRepo.setCurrentQuestionId(_currentQuestionId);
       notifyListeners();
     }
    }



   void selectOption(int _selectedIndex){
      _currentQuestionRepo.questionMap[_currentQuestionId].options.forEach((option) {
        if(option.optionId==_selectedIndex){
          option.selected=true;
        }else{
          option.selected=false;
        }
      });

      notifyListeners();
   }





}