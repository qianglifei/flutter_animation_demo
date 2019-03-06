import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder{
   final Widget widget;
   //重写父类的构造函数
   CustomRoute(this.widget):super(
            ///设置动画的持续时间，建议再1和2之间
            transitionDuration:const Duration(seconds: 1),
            pageBuilder:(BuildContext context, Animation<double> animation1, Animation<double> animation2){
                    return widget;
            },
            transitionsBuilder:(BuildContext context, Animation<double> animation1, Animation<double> animation2, Widget child){
            /// 渐变动画效果
//                return FadeTransition(
//                    opacity: Tween(begin: 0.0,end: 1.0).animate(
//                        CurvedAnimation(
//                            parent: animation1,
//                            ///设置动画额节奏，也就是常说的曲线，Flutter准备了很多节奏，通过改变动画取消可以做出很多不同的效果
//                            curve: Curves.fastOutSlowIn
//                        )
//                    ),
//                    child: child,
//                );
            /// 缩放路由动画
//                return ScaleTransition(
//                    scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
//                    child: child,
//                );
            /// 旋转 + 缩放路由动画
//                return RotationTransition(
//                    turns: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
//                    child: ScaleTransition(scale: Tween(begin: 0.0,end: 1.0).
//                            animate(CurvedAnimation(
//                                      parent: animation1,
//                                      curve: Curves.fastOutSlowIn)),
//                          child: child
//                    ),
//                );
            /// 左右互动路由动画
                  return SlideTransition(
                      position: Tween<Offset>(
                          begin: Offset(-1.0, 0.0),
                          end: Offset(0.0, 0.0)
                      ).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
                      child: child,
                  );
            }
   );
}