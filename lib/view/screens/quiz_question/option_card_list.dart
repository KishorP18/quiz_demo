import 'package:akudo_demo/view/screens/quiz_question/option_card.dart';
import 'package:akudo_demo/view_models/questions_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class OptionCardList extends StatelessWidget {
  final int questionIndex;
  const OptionCardList({Key key,@required this.questionIndex}):
        assert(questionIndex!=null),super(key:key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Consumer<QuestionProvider>(
          builder: (_, questionProvider,child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:18.0,top: 14.0),
                child: Text("Let's try this ...",style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    shadows: <Shadow>[Shadow(blurRadius: 0.5,offset: Offset(1.0, 1.0))]

                ),),
              ),

             ...questionProvider.currentQuestionRepo.getOptions().map((_option){
               return OptionCard(
                 text: _option.optionInfo,
                 onTap: (int val)=>questionProvider.selectOption(val),
                 optionIndex: _option.optionId,
                 isSelected:_option.selected,
               );
             }).toList(),



            ],
          );
        }
      ),
    );
  }
}
