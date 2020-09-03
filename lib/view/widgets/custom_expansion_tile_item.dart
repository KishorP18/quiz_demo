import 'package:flutter/material.dart';

class CustomExpansionTileItem extends StatelessWidget {
  final String title;
  final Function onTap;
  final Widget trailing;
  const CustomExpansionTileItem({Key key,@required this.title,this.trailing,this.onTap}):
        assert(title!=null),super(key:key);
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
          height: 60.0,
          child: Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(title),
                trailing??SizedBox()
              ],
            ),
          ),
          margin: const EdgeInsets.only(
              top: 10.0, left: 0.0, right: 10.0, bottom: 10.0)),
    );
  }
}