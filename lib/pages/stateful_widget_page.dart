import 'package:flutter/material.dart';
import 'package:flutter_book_demo/widgets/common_widget.dart';

final games = [
  '魔兽世界'
];

class StatefulWidgetPage extends StatefulWidget {
  @override
  StatefulWidgetPageState createState() => new StatefulWidgetPageState();
}

class StatefulWidgetPageState extends State<StatefulWidgetPage> {

  int _count = 0;

  @override
  Widget build(BuildContext context){
    return CommonWidget(
      title: 'StatefulWidgetPage',
      child: ListView.builder(
        itemCount: games.length,
        itemBuilder: (BuildContext context, int index){
          return FlatButton(
            child: Text('$_count-${games[index]}'),
            onPressed: (){
              setState(() {
                _count++;
              });
            },
          );
        },
      ),
    );
  }
}