import 'package:akudo_demo/view/widgets/flip_animation.dart';
import 'package:akudo_demo/view_models/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class OptionCard extends StatelessWidget {
  final ValueChanged<int> onTap;
  final int optionIndex;
  final String text;
  final bool isSelected;

  OptionCard({Key key,
    @required this.onTap,
    @required this.text,
    @required this.optionIndex,this.isSelected=false}):assert(onTap!=null),
    assert(optionIndex!=null),assert(text!=null),super(key:key);
  @override
  Widget build(BuildContext context) {
    final _themeProvider=Provider.of<ThemeProvider>(context,listen: false);
    return FlippableBox(
      front: Padding(
        padding: const EdgeInsets.only(left:14.0,right: 14.0,top: 12.0,bottom: 12.0),
        child: InkWell(
          onTap:()=>onTap(optionIndex),
          child: Card(
            elevation: 2.0,
            color: _themeProvider.isDarkThemeEnabled?Colors.pinkAccent:Colors.white70,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
            child: Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16.0,bottom: 16.0,top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                      backgroundColor:_themeProvider.isDarkThemeEnabled?Colors.white70:Colors.black54.withOpacity(0.5),
                      child: Text("$optionIndex")),
                  Text(text),
                  Checkbox(
                      value: isSelected, onChanged:(bool val)=>onTap(optionIndex))

                ],
              ),
            ),
          ),
        ),
      ),
      isFlipped:isSelected,
      back:Padding(
        padding: const EdgeInsets.only(left:14.0,right: 14.0,top: 12.0,bottom: 12.0),
        child: InkWell(
          onTap:()=>onTap(optionIndex),
          child: Card(
            elevation: 2.0,
            color:optionIndex.isEven?Colors.green:Colors.red,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
            child: Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16.0,bottom: 16.0,top: 16.0),
              child: Center(
                child: optionIndex.isEven?Icon(Icons.check_circle_outline,size: 30.0,color: Colors.white,):
                Icon(Icons.cancel,size: 30.0,color: Colors.white,),
              ),
            ),
          ),
        ),
      ),
    );

  }
}
