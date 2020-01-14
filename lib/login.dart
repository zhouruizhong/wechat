import 'package:flutter/material.dart';

/// Opens an [AlertDialog] showing what the user typed.
class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => new _LoginState();
}

/// State for [ExampleWidget] widgets.
class _LoginState extends State<Login> {
  final TextEditingController _username_controller = new TextEditingController();
  final TextEditingController _password_controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 30.0,
            child: Row(
              children: <Widget>[
                Text("用户名"),
                TextField(

                  controller: _username_controller,
                  decoration: new InputDecoration(
                    hintText: '请输入用户名',
                  ),
                ),
                /*Expanded(
                  child: Row(
                    children: <Widget>[
                      new TextField(
                        controller: _username_controller,
                        decoration: new InputDecoration(
                          hintText: '请输入用户名',
                        ),
                      ),
                    ],
                  ),
                ),*/
              ],
            ),
          ),
          new TextField(
            controller: _username_controller,
            decoration: new InputDecoration(
              hintText: '请输入用户名',
            ),
          ),
          new TextField(
            controller: _password_controller,
            decoration: new InputDecoration(
              hintText: '请输入密码',
            ),
          ),
          new RaisedButton(
            onPressed: () {
              showDialog(
                context: context,
                child: new AlertDialog(
                  title: new Text('What you typed'),
                  content: new Text(_username_controller.text),
                ),
              );
            },
            child: new Text('登录'),
          ),
        ],
      ),
      ),
    );
  }
}
