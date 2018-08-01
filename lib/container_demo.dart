import 'package:flutter/material.dart';
class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Center(//new center 子元素居中对齐 
      child:new Container(
        width:128.0,
        height:128.0,
        decoration: new BoxDecoration(//装饰
                    // color: Colors.lightBlueAccent[100],//背景色 new BoxDecoration
                     color: const Color(0xfffce5cd),
                     border: new Border.all(//new Border.all()
                         color: const Color(0xff6d9eeb),
                         width: 8.0,
                          ),
                    ),
                    child:new Center(child:new Text("完成"))
    )
    );
  }
}