import 'package:flutter/material.dart';
import '../common/wechat_item.dart';

class Found extends StatefulWidget{

  @override
  _State createState() => new _State();
}

class _State extends State<Found> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: ListView(
          children: <Widget>[
            Container(
              color:  Colors.white,
              child: WechatItem(title: '朋友圈',icon: Icon(Icons.camera),),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  WechatItem(title: "扫一扫", icon: Icon(Icons.crop_free),),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  WechatItem(title: "摇一摇", icon: Icon(Icons.format_shapes),),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  WechatItem(title: '看一看', icon: Icon(Icons.looks),),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  WechatItem(title: '搜一搜', icon: Icon(Icons.search),),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  WechatItem(title: '附近的人', icon: Icon(Icons.near_me),),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  WechatItem(title: '附近的餐厅', icon: Icon(Icons.fastfood),),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  WechatItem(title: '购物', icon: Icon(Icons.shopping_cart),),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  WechatItem(title: '游戏', icon: Icon(Icons.games),),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              color:  Colors.white,
              child: WechatItem(title: '小程序', icon: Icon(Icons.computer),),
            ),
          ],
        ),
      )
    );
  }

}
