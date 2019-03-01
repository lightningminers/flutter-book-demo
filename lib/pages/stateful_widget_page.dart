import 'package:flutter/material.dart';
import 'package:flutter_book_demo/widgets/common_widget.dart';

class StatefulWidgetPage extends StatefulWidget {
  @override
  StatefulWidgetPageState createState() => new StatefulWidgetPageState();
}

class StatefulWidgetPageState extends State<StatefulWidgetPage> {
  @override
  Widget build(BuildContext context){
    return CommonWidget(
      title: 'StatefulWidgetPage',
      child: Text('StatefulWidgetPage'),
    );
  }
}