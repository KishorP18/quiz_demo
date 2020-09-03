import 'package:flutter/material.dart';

enum TransitionType { SCALE, SLIDE }

class CustomPageTransition {
  static PageRouteBuilder getPageTransition(
      TransitionType transitionType, Widget childWidget) {
    switch (transitionType) {
      case TransitionType.SCALE:
        return PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 600),
            pageBuilder: (context, animation, secondaryAnimation) {
              return childWidget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            });

      case TransitionType.SLIDE:
         return PageRouteBuilder(
           transitionDuration: const Duration(milliseconds: 1400),
           pageBuilder: (context, animation, secondaryAnimation) {
             return childWidget;
           },

             transitionsBuilder: (context, animation, secondaryAnimation, child) {
               Offset begin = Offset(0.0, 1.0);
                Offset end = Offset.zero;
                Curve curve = Curves.ease;

                Tween tween = Tween(begin: begin, end: end);
               CurvedAnimation curvedAnimation = CurvedAnimation(
                 parent: animation,
                 curve: curve,
               );

               return SlideTransition(
                 position: tween.animate(curvedAnimation),
                 child: child,
               );
             }

             );

    }
  }
}
