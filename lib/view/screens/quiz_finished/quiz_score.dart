
import 'package:flutter/material.dart';

class QuizScore extends StatefulWidget {
  const QuizScore({Key key}):super(key:key);
  @override
  _QuizScoreState createState() => _QuizScoreState();
}

class _QuizScoreState extends State<QuizScore> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
       const AnimCard(
          color:Colors.orange,
          totalNum:'3',
          title:'Total',
        ),
       const AnimCard(
          color:Colors.green,
          totalNum:'1',
          title:'Correct',

        ),
       const AnimCard(
          color: Colors.red,
          totalNum: '2',
          title:'Incorrect',

        ),
      ],
    );
  }
}

class AnimCard extends StatefulWidget {
  final Color color;
  final String totalNum;
  final String title;

 const AnimCard({Key key,@required this.color,@required this.totalNum, @required this.title}):
        assert(color!=null&&totalNum!=null&&title!=null),
        super(key:key);

  @override
  _AnimCardState createState() => _AnimCardState();
}

class _AnimCardState extends State<AnimCard> {
  double padding = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          AnimatedPadding(
            padding: EdgeInsets.only(left: padding),
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
            child: Container(
              child: CardItem(
               color: widget.color,
                totalNum:widget.totalNum,
                title:widget.title,
                onTap:() {
                  setState(
                        () => padding = padding == 0 ? 100.0 : 0.0,
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final Color color;
  final String totalNum;
  final String title;
  final onTap;

 const CardItem({Key key,@required this.color,@required this.totalNum,@required this.title,@required this.onTap}):
        assert(color!=null&&totalNum!=null&&title!=null&&onTap!=null),
        super(key:key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          color: color.withOpacity(0.6),
          height: 80,
          width: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.centerRight,
                child: Text(
                  totalNum,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Container(
                  width: 100,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: color.withOpacity(1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}


