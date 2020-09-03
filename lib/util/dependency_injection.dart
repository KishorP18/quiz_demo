import 'package:akudo_demo/view_models/questions_provider.dart';
import 'package:akudo_demo/view_models/quiz_provider.dart';
import 'package:akudo_demo/view_models/theme_provider.dart';
import 'package:get_it/get_it.dart';

GetIt locator=GetIt.instance;


void setUpLocator(){
    locator.registerSingleton<ThemeProvider>(ThemeProvider());
    locator.registerSingleton<QuizProvider>(QuizProvider());
    locator.registerSingleton<QuestionProvider>(QuestionProvider());
}