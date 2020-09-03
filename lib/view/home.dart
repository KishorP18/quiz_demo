import 'package:akudo_demo/util/dependency_injection.dart';
import 'package:akudo_demo/util/routes.dart';
import 'package:akudo_demo/util/theme_const.dart';
import 'package:akudo_demo/view/screens/quiz_start/quiz_start_screen.dart';
import 'package:akudo_demo/view_models/questions_provider.dart';
import 'package:akudo_demo/view_models/quiz_provider.dart';
import 'package:akudo_demo/view_models/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => locator<ThemeProvider>(),
        ),
        ChangeNotifierProvider(
            create: (_) => locator<QuizProvider>()
        ),
        ChangeNotifierProvider(
          create: (_) => locator<QuestionProvider>(),
        )
      ],
      child:MyApp(),
    );
  }
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (_, themeProvider, child) {
        return MaterialApp(
          title: "Akudo Quiz",
          theme: themeProvider.isDarkThemeEnabled
              ? ThemeConst.darkThemeData
              : ThemeConst.lightThemeData,
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeConst.darkThemeData,
          initialRoute: Routes.home,
          onGenerateRoute: Routes.generateRoute,
          home: QuizStartScreen(),
        );
      },
    );
  }
}
