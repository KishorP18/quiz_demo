import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final Function onTap;
  final Color color;
  const CustomBtn({Key key,this.height=70.0,this.child,this.onTap,this.width=100,this.color}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: const Color(0x80000000),
                  blurRadius: 24.0,
                  offset: Offset(0.0, 24.0)
              )
            ],
            gradient: LinearGradient(
                begin:Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  color?? Color(0xFFA7BFE8),
                  color?.withOpacity(0.5)??Color(0XFF6190E8)
                ])
        ),

        child:child??Text(
          "Tap me!",
          style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w600,
              color: Colors.white
          ),

        ),
      ),
    );
  }
}