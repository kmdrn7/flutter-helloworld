import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Helloworld")),
        ),
        body: Center(
          child: Container(
            color: Colors.lightBlue,
            width: 150,
            height: 50,
            child: Text("Helloworld",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 40,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800
                        ),),
          ),
        ),
      ),
    );
  }
}
