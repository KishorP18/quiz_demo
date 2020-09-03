import 'package:akudo_demo/util/routes.dart';
import 'package:akudo_demo/view/widgets/custom_btn.dart';
import 'package:akudo_demo/view_models/questions_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SubmitAndBackBtn extends StatelessWidget {
  const SubmitAndBackBtn({Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionProvider>(
      builder: (_,_questionProvider,child){
        return Padding(
          padding: const EdgeInsets.only(left:14.0,right: 14.0,top: 12.0,bottom: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              if(_questionProvider.currentQuestionId>1)CustomBtn(
                height: 50.0,
                color: Theme.of(context).accentColor,
                onTap: ()=>_questionProvider.tapToPreviousQuestion(),
                child:Text("Back",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)) ,),

              CustomBtn(
                height: 50.0,

                onTap:(){
                  if(_questionProvider.currentQuestionId<3){
                    _questionProvider.tapToNextQuestion();
                  }else{
                    Navigator.pushNamed(context, Routes.quizFinishedScreen);
                  }
                },
                child: Text("Next",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),

              ),

            ],
          ),
        );
      },
    );


  }
}
