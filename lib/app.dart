import 'package:flutter/material.dart';
import './chat/message_page.dart';
import './contacts/contacts.dart';
import './found/found.dart';
import './personal/personal.dart';

enum ItemType {GroupChat, AddFriends, QrCode, Payments, Help}

class App extends StatefulWidget {
  @override
  MainState createState() => MainState();
}

class MainState extends State<App>{

  var _currentIndex = 0;
  var _appBarTitle = "聊吧";

  MessagePage message;
  Contacts contacts;
  Found found;
  Personal me;

  currentPage(){
    switch (_currentIndex){
      case 0:
        if (message == null){
          message = new MessagePage();
        }
        return message;
      case 1:
        if (contacts == null){
          contacts = new Contacts();
        }
        return contacts;
      case 2:
        if (found == null){
          found = new Found();
        }
        return found;
     case 3:
        if (me == null){
          me = new Personal();
        }
        return me;
      default:

    }
  }

  _popupMenuItem(String title, {String imagePath, IconData icon}){
    return PopupMenuItem(
        child: Row(
          children: <Widget>[
            imagePath != null ? Image.asset(imagePath, width: 32.0, height: 32.0,) : SizedBox(width: 32.0, height: 32.0, child: Icon(icon, color: Colors.white,),),
            Container(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(title, style: TextStyle(color: Colors.white),),
            )
          ],
        ));
  }

  _appBar(){
    switch (_currentIndex){
      case 0:
        return new AppBar(
          title: Text(_appBarTitle, style: TextStyle(color: Colors.black,),),
          centerTitle: true,
          backgroundColor: Color(0xFFd9d9d9),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: GestureDetector(
                onTap: (){
                  showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                    items: <PopupMenuEntry>[
                      _popupMenuItem("发起群聊", icon: Icons.chat),
                      _popupMenuItem("添加朋友", icon: Icons.person_add),
                      _popupMenuItem("扫一扫", icon: Icons.scanner),
                      _popupMenuItem("收付款", icon: Icons.crop_free),
                      _popupMenuItem("帮助与反馈", icon: Icons.feedback),
                    ]);
                },
                child: Icon(Icons.add_circle_outline, color: Colors.black,),
              ),
            ),
          ],
          bottom: PreferredSize(
            child: Container(
              height: 40,
              width: double.infinity,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.white
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: GestureDetector (
                onTap: (){
                  print("点击搜索");
                  Navigator.pushNamed(context, 'search');
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.search),
                      Padding(padding: const EdgeInsets.only(left: 5.0, right: 5.0)),
                      Text("搜索", style: TextStyle(fontSize: 18.0),),
                    ],
                  ),
                ),
              ),
            ),
            preferredSize: Size(30, 60),
          ),
        );
      case 1:
        return new AppBar(
          title: Text(_appBarTitle, style: TextStyle(color: Colors.black,),),
          centerTitle: true,
          backgroundColor: Color(0xFFd9d9d9),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: GestureDetector(
                onTap: (){

                },
                child: Icon(Icons.person_add, color: Colors.black,),
              ),
            ),
          ],
          bottom: PreferredSize(
            child: Container(
              height: 40,
              width: double.infinity,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.white
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: GestureDetector (
                onTap: (){
                  print("点击搜索");
                  Navigator.pushNamed(context, 'search');
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.search),
                      Padding(padding: const EdgeInsets.only(left: 5.0, right: 5.0)),
                      Text("搜索", style: TextStyle(fontSize: 18.0),),
                    ],
                  ),
                ),
              ),
            ),
            preferredSize: Size(30, 60),
          ),
        );
      case 2:
        return new AppBar(
          title: Text(_appBarTitle, style: TextStyle(color: Colors.black,),),
          centerTitle: true,
          backgroundColor: Color(0xFFd9d9d9),
        );
      case 3:
        return null;
      default:

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          onTap: ((index) {
            setState(() {
              _currentIndex = index;
              switch (index){
                case 0:
                  _appBarTitle = "聊吧";
                  break;
                case 1:
                  _appBarTitle = "通讯录";
                  break;
                case 2:
                  _appBarTitle = "发现";
                  break;
              /*  case 3:*/

                default:
                  _appBarTitle = "聊吧";
              }
            });
          }),
          items: [
            new BottomNavigationBarItem(
              title: new Text("首页", style: TextStyle(color: _currentIndex == 0 ? Colors.black : Color(0xff999999)),),
              icon: _currentIndex == 0 ? Image.asset("images/homecheck.png", width: 32.0, height: 28.0,) : Image.asset("images/home.png", width: 32.0, height: 28.0,)
            ),
            new BottomNavigationBarItem(
                title: new Text("通讯录", style: TextStyle(color: _currentIndex == 1 ? Colors.black : Color(0xff999999)),),
                icon: _currentIndex == 1 ? Image.asset("images/contactcheck.png", width: 32.0, height: 28.0,) : Image.asset("images/contact.png", width: 32.0, height: 28.0,)
            ),
            new BottomNavigationBarItem(
                title: new Text("发现", style: TextStyle(color: _currentIndex == 2 ? Colors.black : Color(0xff999999)),),
                icon: _currentIndex == 2 ? Image.asset("images/findcheck.png", width: 32.0, height: 28.0,) : Image.asset("images/find.png", width: 32.0, height: 28.0,)
            ),
            new BottomNavigationBarItem(
                title: new Text("我", style: TextStyle(color: _currentIndex == 3 ? Colors.black : Color(0xff999999)),),
                icon: _currentIndex == 3 ? Image.asset("images/profilecheck.png", width: 32.0, height: 28.0,) : Image.asset("images/profile.png", width: 32.0, height: 28.0,)
            ),
          ]
      ),
      body: currentPage(),
    );
  }
}
