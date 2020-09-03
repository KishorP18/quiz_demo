import 'package:flutter/cupertino.dart';

import 'option.dart';

class Question{
  final int questionId;
  final String questionInfo;
  final List<Option> options;
  Question({@required this.questionId,@required this.options,@required this.questionInfo}):
  assert(questionId!=null&&options!=null&&options!=null);
}


