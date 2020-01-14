import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './touch_callback.dart';

class WechatItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final Icon icon;

  WechatItem({
    Key key,
    @required this.title,
    this.imagePath,
    this.icon,
  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return TouchCallback(
        onPressed: (){
          switch(title){
            case '朋友圈':
              Navigator.pushNamed(context, '/friends');
              break;
            case '扫一扫':

              break;
            case '摇一摇':

              break;
            case '看一看':

              break;
            case '搜一搜':

              break;
            case '附近的人':

              break;
            case '附近的餐厅':

              break;
            case '购物':

              break;
            case '游戏':

              break;
            case '小程序':

              break;
          }
        },
        child: Container(
          height: 50.0,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: imagePath != null ?
                      Image.asset(imagePath, width: 32.0, height: 32.0,) :
                      SizedBox(height: 32.0, width: 32.0, child: icon,),
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                    ),
                    Text(title,style: TextStyle(fontSize: 16.0, color: Color(0xFF353535)),),
                  ],
                )
              ),
              Container(
                child: Icon(Icons.chevron_right),
                margin: const EdgeInsets.only(right: 10.0),
              ),
            ],
          ),
        ),
    );
  }


}
