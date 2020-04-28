import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int idx = 0;
  List<Widget> wgs = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List & ListView"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("Tambah Data"),
                  onPressed: () {
                    setState(() {
                      idx++;
                      wgs.add(
                        Text("Index ke-" + idx.toString())
                      );
                    });
                  }
                ),
                RaisedButton(
                  child: Text("Hapus Data"),
                  onPressed: () {
                    setState(() {
                      if ( idx>0 ){
                        wgs.removeLast();
                        idx--;
                      }
                    });
                  }
                ),
              ],
            ),
            Column(
              children: wgs
            )
          ],
        )
      ),
    );
  }
}