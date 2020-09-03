import 'package:flutter/material.dart';

class AnimatedExpansionTile extends StatefulWidget {
  final String title;
  final List<Widget> expandedChildren;
   bool isExpanded;
  AnimatedExpansionTile({this.title="Title",@required this.expandedChildren,this.isExpanded=false}):
  assert(expandedChildren!=null);

  @override
  _AnimatedExpansionTileState createState() => _AnimatedExpansionTileState();
}

class _AnimatedExpansionTileState extends State<AnimatedExpansionTile> {


  @override
  Widget build(BuildContext context) {
    return Card(
       elevation: 8.0,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(14.0))
       ),

      child: ExpansionTile(
        initiallyExpanded: widget.isExpanded,
        trailing: Text(""),
        onExpansionChanged: (bool isExpanded){
          setState(() {
            widget.isExpanded=isExpanded;
          });
        },

        title: Container(
            height: 80.0,
            alignment: Alignment.centerLeft,
            child: Row(
              children: <Widget>[
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 600),
                  reverseDuration: const Duration(milliseconds: 50),
                  child: widget.isExpanded?Icon(Icons.add_circle_outline,color: Colors.blueAccent,size: 28.0,)
                      :Icon(Icons.remove_circle_outline,color: Colors.blueAccent,size: 28.0,),

                ),
                const SizedBox(width: 16.0,),
                Text(
                  widget.title,
                  style: TextStyle(
                   fontSize: 20.0,
                   color: Theme.of(context).appBarTheme.textTheme.bodyText1.color
                  ),
                ),
              ],
            ),
            ),

        children: widget.expandedChildren,
      ),
    );
  }
}


