import 'package:flutter/material.dart';
import 'pages/FirstPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Flutter 路由动画',
        theme: ThemeData(
            primarySwatch: Colors.pink,
        ),
        home: FirstPage()
    );
  }

}