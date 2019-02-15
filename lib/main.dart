import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    // TODO: implement createState
    return new _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCount() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Demo Home Page'),
      ),

      body: new Center(
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10.0, top: 10.0),
              child: new Icon(
                Icons.library_music,
                size: 80.0,
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 20.0, top: 10.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("设备信息"),
                  new Text("这里是设备信息的具体内容"),
                ],),
            ),

            Container(
              padding: EdgeInsets.only(left: 50.0, top: 10.0),
              child: new Text("2019-02-12"),
            ),

          ],
        ),
      ),

//      floatingActionButton: new FloatingActionButton(
//        onPressed: _incrementCount,
//        tooltip: 'Increment',
//        child: new Icon(Icons.add),
//      ),
    );
  }
}
