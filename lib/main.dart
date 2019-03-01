import 'package:flutter/material.dart';
import 'package:flutter_book_demo/pages/stateless_widget_page.dart';
import 'package:flutter_book_demo/pages/stateful_widget_page.dart';

void main() => runApp(MyApp());

final pages = [
  'StatelessWidget',
  'StatefulWidget'
];

final pagesRouter = {
  'StatelessWidget':StatelessWidgetPage(),
  'StatefulWidget':StatefulWidgetPage(),
};

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Book Demo'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ListView.builder(
              itemCount: pages.length,
              itemBuilder: (BuildContext context, int index){
                final page = pages[index];
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: 5.0
                  ),
                  child: RaisedButton(
                    child: Text(page),
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context){
                            return pagesRouter[page];
                          }
                        )
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}