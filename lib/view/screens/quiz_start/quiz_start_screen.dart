import 'package:akudo_demo/view/screens/quiz_start/quiz_category.dart';
import 'package:akudo_demo/view/screens/quiz_start/quiz_description.dart';
import 'package:akudo_demo/view_models/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class QuizStartScreen extends StatelessWidget {

  const QuizStartScreen({Key key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    final _themeProvider=Provider.of<ThemeProvider>(context,listen:false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: Text("Akudo Quiz",style: TextStyle(fontSize: 20.0),),
        actions: <Widget>[
          Switch(
              activeColor: Theme.of(context).accentColor,
              value:_themeProvider.isDarkThemeEnabled,
              onChanged: (bool val)=>_themeProvider.setAppTheme()),
        ],
      ),
      body:ListView(
        padding: const EdgeInsets.all(20.0),
        primary: true,
        children: <Widget>[
          const SizedBox(height: 12.0,),
          const QuizDescription(),
          const SizedBox(height: 32.0,),
          const QuizCategory(),
          const SizedBox(height: 48.0,),


        ],
      ),
    );
  }
}
