import 'package:akudo_demo/view/widgets/animated_expansion_tile.dart';
import 'package:akudo_demo/view/widgets/custom_expansion_tile_item.dart';
import 'package:flutter/material.dart';

class QuizDescription extends StatelessWidget {
  const QuizDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedExpansionTile(
      title: "Description",
      expandedChildren: <Widget>[
        CustomExpansionTileItem(title: "Akudo quiz is analous to mind sport",),

        CustomExpansionTileItem(title: "Akudo quiz is analous to mind sport"),

        CustomExpansionTileItem(title: "Akudo quiz is analous to mind sport"),
      ],
    );
  }
}




