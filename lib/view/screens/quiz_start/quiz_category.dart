import 'package:akudo_demo/util/routes.dart';
import 'package:akudo_demo/view/widgets/animated_expansion_tile.dart';
import 'package:akudo_demo/view/widgets/custom_expansion_tile_item.dart';
import 'package:akudo_demo/view_models/questions_provider.dart';
import 'package:akudo_demo/view_models/quiz_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class QuizCategory extends StatelessWidget {
  const QuizCategory({Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Consumer<QuizProvider>(
      builder: (_,quizProvider,child){
        return AnimatedExpansionTile(
          isExpanded: true,
          title: "Quiz Category",
          expandedChildren:quizProvider.quizList.map((_quiz) =>CustomExpansionTileItem(
            title: _quiz.quizCategory,
            onTap:(){
              quizProvider.setCurrentQuizId(_quiz.quizId);
              Provider.of<QuestionProvider>(context,listen: false).loadCurrentQuestionRepo();

              Navigator.pushNamed(context, Routes.quizQuestionScreen);
            },
            trailing: Icon(Icons.arrow_forward_ios,size: 24.0,),

          )).toList(),
        );
      },
    );
  }
}
