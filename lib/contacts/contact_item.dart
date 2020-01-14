import 'package:flutter/material.dart';
import './contact_vo.dart';

class ContactItem extends StatelessWidget{
  final ContactVo item;
  final String titleName;
  final String imageName;

  ContactItem({this.item, this.titleName, this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 0.5, color: Color(0xFFd9d9d9)))
      ),
      height: 52.0,
      child: FlatButton(
          onPressed: (){

          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              imageName == null ? Image.network(item.avatarUrl != '' ? item.avatarUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578867647515&di=b12fc6812fce2695b76f6ecbec9c409a&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20170829%2F1c7cf6a0effc44879548c8baa25030c4.jpeg', width: 36.0, height: 36.0, scale: 0.9,) : Image.asset(imageName, width: 36.0, height: 36.0,),
              Container(
                margin: const EdgeInsets.only(left: 12.0),
                child: Text(
                  titleName == null ? item.name ?? '暂时': titleName,
                  style: TextStyle(fontSize: 18.0, color: Color(0xFF353535)),
                ),
              ),
            ],
          )
      ),
    );
  }
}
