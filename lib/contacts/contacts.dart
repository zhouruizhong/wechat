import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './contact_sider_list.dart';
import './contact_item.dart';
import './contact_header.dart';
import './contact_vo.dart';

class Contacts extends StatefulWidget{
  @override
  ContactState createState() => new ContactState();
}

class ContactState extends State<Contacts>{

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactSiderList(
          items: contactData,
          headerBuilder: (BuildContext context, int index){
            return Container(
              child: ContactHeader(),
            );
          },
          itemBuilder: (BuildContext context, int index){
            return Container(
              color: Colors.white,
              alignment: Alignment.centerLeft,
              child: ContactItem(item: contactData[index],),
            );
          },
          sectionBuilder: (BuildContext context, int index) {
            return Container(
              height: 32.0,
              padding: const EdgeInsets.only(left: 14.0),
              color: Colors.grey[300],
              alignment: Alignment.centerLeft,
              child: Text(
                contactData[index].sectionKey,
                style: TextStyle(fontSize: 14.0, color: Color(0xff909090)),
              ),
            );
          }
      ),
    );
  }

}
