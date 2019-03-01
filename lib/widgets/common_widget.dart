import 'package:flutter/material.dart';

class CommonWidget extends StatelessWidget{

  final Widget child;
  final String title;

  CommonWidget({Key key, this.child, this.title}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: child,
      )
    );
  }
}