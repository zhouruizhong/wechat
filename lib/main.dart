import 'package:flutter/material.dart';
import './app.dart';
import 'loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import './search.dart';
import './contacts/contacts.dart';
import './login.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'wechat',
  theme: mDefaultTheme,
  routes: <String, WidgetBuilder> {
    "app": (BuildContext context) => new App(),
    "login": (BuildContext contet) => new Login(),
      "/friends": (_) => new WebviewScaffold(
        url: "https://weixin.qq.com/",
        appBar: new AppBar(
          title: new Text("聊圈"),
        ),
        withZoom: true,
        withLocalStorage: true,
      ),
    "contracts": (BuildContext context) => new Contacts(),
    "search": (BuildContext context) => new Search(),
  },
  home: new LoadingPage(),
));

final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Color(0xff303030),
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Color(0xff393a3f),
);
