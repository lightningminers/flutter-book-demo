import 'package:flutter/material.dart';
import 'dart:async';

Future<T> alert<T>(BuildContext context,String text){
  return showDialog(
    context: context,
    builder: (BuildContext context){
      return SimpleDialog(
        title: Text('alert'),
        children: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 20.0
              ),
              child: Text(text),
            )
          ),
        ],
      );
    }
  );
}