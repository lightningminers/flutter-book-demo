import 'package:flutter/material.dart';
import 'package:flutter_book_demo/widgets/common_widget.dart';
import 'package:flutter_book_demo/widgets/alert.dart';

class HelloWorldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return CommonWidget(
      title: 'HelloWorldPage',
      child: FlatButton(
        child: Text('Hello world'),
        onPressed: (){
          alert(context, 'Hello world');
        },
      ),
    );
  }
}