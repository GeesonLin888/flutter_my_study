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
        body: new ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsetsDirectional.only(top: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      new Text("直播"),
                      Container(
                        width: 30.0,
                        height: 1.0,
                        margin: EdgeInsetsDirectional.only(top: 5.0),
                        color: Color.fromARGB(255, 250, 100, 140),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      new Text("推荐"),
                      Container(
                        width: 30.0,
                        height: 1.0,
                        margin: EdgeInsetsDirectional.only(top: 5.0),
                        color: Color.fromARGB(255, 250, 100, 140),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      new Text("追播"),
                      Container(
                        width: 30.0,
                        height: 1.0,
                        margin: EdgeInsetsDirectional.only(top: 5.0),
                        color: Color.fromARGB(255, 250, 100, 140),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      new Text("国家宝藏"),
                      Container(
                        width: 30.0,
                        height: 1.0,
                        margin: EdgeInsetsDirectional.only(top: 5.0),
                        color: Color.fromARGB(255, 250, 100, 140),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      new Text("故事王2"),
                      Container(
                        width: 30.0,
                        height: 1.0,
                        margin: EdgeInsetsDirectional.only(top: 5.0),
                        color: Color.fromARGB(255, 250, 100, 140),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              color: Colors.black12,
              height: 140.0,
              child: new ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image.asset(
                  "images/bangumi_review_rating_5.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(
              height: 140.0,
              child: Container(
                child: new ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return new Column(
                        children: <Widget>[
                          Image.asset(
                            "images/ic_22_cry.png",
                            width: 80.0,
                            height: 30.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                top: 10.0, bottom: 10.0),
                            child: new Text(
                              "英雄联盟",
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ),
                          Image.asset(
                            "images/ic_22_cry.png",
                            width: 80.0,
                            height: 30.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                top: 10.0, bottom: 10.0),
                            child: new Text(
                              "英雄联盟",
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ),
            Container(
              color: Colors.black12,
              height: 1.0,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: new Row(
                children: <Widget>[
                  new Text("我的关注"),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 10.0, end: 10.0),
                    child: new Text(
                      "16小时前",
                      style: TextStyle(color: Colors.black54, fontSize: 11.0),
                    ),
                  ),
                  new Text("我在唱歌很帅", style: TextStyle(fontSize: 13.0)),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 10.0, end: 10.0),
                    child: new Text(
                      "直播了那个电台",
                      style: TextStyle(color: Colors.black54, fontSize: 11.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 70.0),
                    child: Icon(
                      Icons.navigate_next,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.black12,
              height: 1.0,
            ),
            Container(
                margin: EdgeInsets.all(10.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("推荐直播"),
                    new Row(
                      children: <Widget>[
                        new Text("换一换",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 13.0)),
                        new Icon(
                          Icons.sync,
                          color: Colors.grey,
                          size: 18.0,
                        ),
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: 610.0,
              child: Container(
                  child: new GridView.builder(
                      itemCount: 6,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.3,
                        crossAxisSpacing: 10.0,
                      ),
                      itemBuilder: (context, index) {
                        return new Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: <Widget>[
                                    new ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0)),
                                      child: Image.asset(
                                        "images/bangumi_review_rating_5.png",
                                        height: 100.0,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: new Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          new Text(
                                            "帅哥1",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13.0),
                                          ),
                                          new Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.people,
                                                color: Colors.black,
                                              ),
                                              new Text(
                                                "8.8万人",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 13.0),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: new Text("我的眼泪不是为你而流"),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: new Text(
                                      "也为别人流",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13.0),
                                    )),
                              ],
                            ));
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
