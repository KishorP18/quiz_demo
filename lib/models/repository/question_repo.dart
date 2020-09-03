import 'package:akudo_demo/models/data_class/option.dart';
import 'package:akudo_demo/models/data_class/question.dart';

class QuestionsRepository {
   int currentQuestionId=1;
   bool questionsSolved=false;

   Map<int, Question> questionMap = {
    1: Question(
        questionId: 1,
        options: [
          Option(1, 'opt 1.a'),
          Option(2, 'opt 1.b'),
          Option(3, 'opt 1.c'),

        ],
        questionInfo: "Lorem ipsum is placeholder text commonly used in the "
            "graphic, print, "
            "and publishing industries for previewing layouts."),
    2: Question(
        questionId: 2,
        options: [
          Option(1, 'opt 2.a'),
          Option(2, 'opt 2.b'),
          Option(3, 'opt 2.c'),

        ],
        questionInfo:  "Lorem ipsum is placeholder text commonly used in the "
            "graphic, print, "
            "and publishing industries for previewing layouts."),
    3: Question(
        questionId: 3,
        options: [
          Option(1, 'opt 3.a'),
          Option(2, 'opt 3.b'),
          Option(3, 'opt 3.c'),

        ],
        questionInfo:  "Lorem ipsum is placeholder text commonly used in the "
            "graphic, print, "
            "and publishing industries for previewing layouts."),
  };



  Question getCurrentQuestion(){
    return questionMap[currentQuestionId];
  }

  void setCurrentQuestionId(int val){
   if(val<=questionMap.length){
     currentQuestionId=val;
   }else{
     setQuestionSloved(true);
   }
  }

  List<Option> getOptions() {
    return questionMap[currentQuestionId].options;
  }


  void setQuestionSloved(bool val){
    questionsSolved=val;
  }

//  bool toggleOptionSelection(
//      int questionId, int optionId, bool currentSelectedState) {
//    Option option = questionMap[questionId]
//        .options
//        .firstWhere((opt) => opt.optionId == optionId);
//    return option.setSelectionState(!currentSelectedState);
//  }
}
