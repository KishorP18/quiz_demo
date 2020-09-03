import 'package:akudo_demo/view_models/questions_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class QuestionCard extends StatelessWidget {
  const QuestionCard({Key key})
      :super(key:key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4.6,
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey,
                offset: Offset(1.0, 1.0),
                blurRadius: 4.0),
          ]),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CurrentQuestionTitle(),
          CurrentQuestionDescription(),



          const SizedBox(
            height: 10,
          )
        ],
      ),

    );

  }
}



class CurrentQuestionTitle extends StatelessWidget {
  const CurrentQuestionTitle({Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionProvider>(
        builder:(_,questionProvider,child){
          return Padding(
            padding: const EdgeInsets.only(left:20.0,top: 20.0),
            child: Text(
              "Question No. ${questionProvider.currentQuestionId}",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  shadows: <Shadow>[Shadow(color: Colors.black54,blurRadius: 0.2,offset: Offset(1.0, 1.0))]),

            ),
          );
        });
  }
}


class CurrentQuestionDescription extends StatelessWidget {
  const CurrentQuestionDescription({Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionProvider>(
        builder:(_,questionProvider,child){
          return  Padding(
            padding: const EdgeInsets.only(left:20.0,top: 20.0,right: 60.0),
            child: Text(
              questionProvider.currentQuestionRepo.getCurrentQuestion().questionInfo,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  shadows: <Shadow>[Shadow(color: Colors.black54,blurRadius: 0.2,offset: Offset(1.0, 1.0))]),

            ),
          );
        });
  }
}