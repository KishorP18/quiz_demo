import 'package:akudo_demo/view/screens/quiz_question/option_card_list.dart';
import 'package:akudo_demo/view/screens/quiz_question/question_card.dart';
import 'package:akudo_demo/view/screens/quiz_question/submit_and_back_btn.dart';
import 'package:akudo_demo/view_models/quiz_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class QuizQuestionScreen extends StatelessWidget {
  const QuizQuestionScreen({Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:QuizQuestionTitle() ,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30.0,
            ),
            onPressed: () => Navigator.pop(context)),
      ),
      body: ListView(
        primary: true,
        padding: const EdgeInsets.all(18.0),
        children: <Widget>[
           const QuestionCard(),
           const SizedBox(height: 20.0,),
           OptionCardList(questionIndex: 1,),
           const SubmitAndBackBtn(),

          ]
      ),
    );
  }
}


class QuizQuestionTitle extends StatelessWidget {
  const QuizQuestionTitle({Key key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Consumer<QuizProvider>(
        builder: (_,quizProvider,child){
          return Text(quizProvider.getCurrentQuiz().quizCategory);
        }

    );
  }
}

