import 'package:akudo_demo/util/routes.dart';
import 'package:akudo_demo/view/screens/quiz_finished/quiz_score.dart';
import 'package:akudo_demo/view/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class QuizFinishedScreen extends StatelessWidget {
  const QuizFinishedScreen({Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Result Screen",style: TextStyle(fontSize: 20.0),),

      ),
      body:ListView(
        shrinkWrap: true,
        primary: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          QuizScore(),
          SizedBox(height: 30.0,),
          CustomBtn(
            onTap: ()=>Navigator.pushNamedAndRemoveUntil(context, Routes.home, (navigateBack) => false),
            child: Text("Retry",style: TextStyle(color: Colors.white,fontSize: 28.0,fontWeight: FontWeight.w600),)
            ,color: Colors.green,),
        ],
      ),
    );
  }
}
