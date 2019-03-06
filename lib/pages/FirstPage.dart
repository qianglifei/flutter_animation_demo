import 'package:flutter/material.dart';
import 'SecondPage.dart';
import 'package:flutter_animation_demo/custom_router.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
            title: Text('FirstPage',style: TextStyle(fontSize: 36.0)),
            elevation: 0.0,
        ),
        body: Center(
            child: MaterialButton(
                onPressed: (){
//                    Navigator.of(context).push(MaterialPageRoute(
//                        builder: (BuildContext context){
//                            return SecondPage();
//                        }
//                    ));
                      Navigator.of(context).push(CustomRoute(SecondPage()));
                },
                child: Icon(
                    Icons.navigate_next,
                    color: Colors.deepOrange,
                    size: 64.0,
                ),
            ),
        ),
    );
  }

}