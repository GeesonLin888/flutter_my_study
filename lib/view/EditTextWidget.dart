import 'package:flutter/material.dart';

void main() => runApp(new HomeFragment());

class HomeFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeFragmentState();
  }
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(255, 250, 100, 140)),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: new Row(
            children: <Widget>[
              Stack(
                alignment: Alignment(1.5, -1.5),
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      "images/ic_recommend_avatar.png",
                      width: 30.0,
                      height: 30.0,
                    ),
                  ),
                  Container(
                    width: 9.0,
                    height: 9.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1.0),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsetsDirectional.only(start: 15.0, end: 20.0),
                alignment: Alignment.centerLeft,
                padding: EdgeInsetsDirectional.only(start: 10.0),
                width: 180.0,
                height: 30.0,
                child: Image.asset(
                  "images/music_search_gray_white.png",
                  width: 15.0,
                  height: 15.0,
                ),
                decoration: new BoxDecoration(
                  color: Color.fromARGB(70, 120, 100, 100),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
              Image.asset(
                "images/music_icon_create_menu_white.png",
                width: 30.0,
                height: 30.0,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 20.0),
                child: Image.asset(
                  "images/music_icon_download.png",
                  width: 30.0,
                  height: 30.0,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 20.0),
                child: Image.asset(
                  "images/music_icon_menu_comment_gray.png",
                  width: 30.0,
                  height: 30.0,
                ),
              ),
            ],
          ),
        ),
        body: new Column(
          children: <Widget>[
            new Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              height: 30.0,
              child: EditableText(
                controller: TextEditingController(),
                focusNode: FocusNode(),
                style: TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.grey,
                backgroundCursorColor: Colors.blue,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                )
              ),
            ),

            Container(
              margin: EdgeInsets.all(20.0),
              height: 40.0,
              child: new TextField(
                decoration: InputDecoration(
                  labelText: "请输入您的爱好",
                  labelStyle: TextStyle(
                    color: Colors.blue,
                  ),
                  helperText: "乖乖的输入吧",
                  hintText: "这是一个hintText",
//                  icon: Icon(Icons.people),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.sync),
                  border: OutlineInputBorder(),
//                border: InputBorder.none,
//                border: UnderlineInputBorder(),
                ),
              ),
            )

          ],
        )
      ),
    );
  }
}
