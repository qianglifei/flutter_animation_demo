import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
            title: Text('SceondPage',style: TextStyle(fontSize: 36.0)),
            elevation: 0.0,
            backgroundColor: Colors.pinkAccent,
            leading: Container(),
        ),
        body: Center(
            child: MaterialButton(
                onPressed: (){
                    Navigator.of(context).pop();
                },
                child: Icon(
                    Icons.navigate_before,
                    color: Colors.greenAccent,
                    size: 64.0,
                ),
            ),
        ),
    );
  }

}