import 'package:flutter/material.dart';
import 'package:flutter_book_demo/widgets/common_widget.dart';

class StatelessWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonWidget(
      title: 'StatelessWidgetPage',
      child: Text('StatelessWidgetPage'),
    );
  }
}