import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './contact_vo.dart';

class ContactSiderList extends StatefulWidget{

  final List<ContactVo> items;
  final IndexedWidgetBuilder headerBuilder;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder sectionBuilder;

  ContactSiderList({
    Key key,
    @required this.items,
    this.headerBuilder,
    @required this.itemBuilder,
    @required this.sectionBuilder,
  }):super(key : key);

  @override
  ContactState createState() => new ContactState();
}


class ContactState extends State<ContactSiderList> {
  Color _pressColor = Colors.transparent;
  final ScrollController _scrollController = new ScrollController();

  bool _onNotification(ScrollNotification notification){
    return true;
  }

  _isShowHeaderView(index){
    if(index == 0 && widget.headerBuilder != null){
      return Offstage(
        offstage: false,
        child: widget.headerBuilder(context, index),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          NotificationListener(
            onNotification: _onNotification,
            child: ListView.builder(
              controller: _scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: widget.items.length,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        _isShowHeaderView(index),
                        Offstage(
                          offstage: _shouldShowHeader(index),
                          child: widget.sectionBuilder(context, index),
                        ),
                        Column(
                          children: <Widget>[
                            widget.itemBuilder(context, index),
                          ],
                        ),

                      ],
                    ),
                  );
                },
            ),
          ),

          //排序字母
          Positioned(
              right: 0.0,
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height,
                width: 32.0,
                color: _pressColor,
                child: GestureDetector(
                  // 手指按下
                  onTapDown: (TapDownDetails t){
                    setState(() {
                      _pressColor = Colors.grey;
                    });
                  },
                  // 手指弹起
                  onTapUp: (TapUpDetails t){
                    setState(() {
                      _pressColor = Colors.transparent;
                    });
                  },
                  // 开始垂直滑动
                  onVerticalDragStart: (DragStartDetails details){
                      setState(() {
                        _pressColor = Colors.grey;
                      });
                  },
                  // 结束垂直滑动
                  onVerticalDragEnd: (DragEndDetails details){
                    setState(() {
                      _pressColor = Colors.transparent;
                    });
                  },
                  // 手指垂直滑动
                  onVerticalDragUpdate: (DragUpdateDetails details){

                  },
                  child: ListView.builder(
                    controller: ScrollController(),
                      itemCount: siderBarKey.length,
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          alignment: Alignment.center,
                          height: 17.0,
                          child: Text(siderBarKey[index]),
                        );
                      },
                  ),
                ),
              ),
          ),

        ],
      ),
    );
  }

  listScrollToPosition(int index){
    // 重要方法：根据滑动的字母返回listview中的位置
    for(var i= 0; i < widget.items.length; i++){
      if(siderBarKey[index] == "☆" || siderBarKey[index] == "⬆"){
        _scrollController.jumpTo(0.0);
        setState(() {

        });
        return -1;
      }else if (widget.items[i].sectionKey == siderBarKey[index]){
        return i;
      }
    }
    return -1;
  }

  bool _shouldShowHeader(int position){
    if(position < 0) {
      return false;
    }
    if(position == 0) {
      return false;
    }

    if(position != 0 && widget.items[position].sectionKey != widget.items[position -1].sectionKey){
      return false;
    }
    return true;
  }
}

abstract class SectionIndexer{
  listScrollToPosition(int index);
}

const siderBarKey = <String>[
  "⬆","☆","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","#"
];
