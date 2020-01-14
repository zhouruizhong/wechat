import 'package:flutter/material.dart';
import '../common/touch_callback.dart';
import '../common/wechat_item.dart';

class Personal extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 140.0,
            child: TouchCallback(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.camera_alt),
                    margin: const EdgeInsets.all(20.0),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 15.0),
                          child: Image.asset('images/head.jpg',width: 70.0, height: 70.0,),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('成长快乐',style: TextStyle(fontSize: 18.0,color: Color(0xFF353535)),),
                              Container(
                                child: Row(//水平方向
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text('微信号：',style: TextStyle(fontSize: 14.0,color: Color(0xFF353535)),),
                                    Text('zhouruizhong',style: TextStyle(fontSize: 14.0,color: Color(0xFF353535)),),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          Icon(Icons.blur_on),
                                        ],
                                      )
                                    ),
                                    Container(
                                      child: Icon(Icons.chevron_right),
                                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                  )
                ],
              ),
              onPressed: (){

              }
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: Colors.white,
            child: WechatItem(title: '支付', icon: Icon(Icons.payment),),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                WechatItem(title: '收藏', icon: Icon(Icons.collections),),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                WechatItem(title: '相册', icon: Icon(Icons.album),),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                WechatItem(title: '卡包', icon: Icon(Icons.card_giftcard),),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                WechatItem(title: '表情', icon: Icon(Icons.tag_faces),),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: Colors.white,
            child: WechatItem(title: '设置', icon: Icon(Icons.settings),),
          ),
        ],
      ),
    );
  }




}

