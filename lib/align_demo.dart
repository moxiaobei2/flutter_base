import 'package:flutter/material.dart';

class AlignDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('对齐'),
        ),
        // body: new Stack(
        //   children: <Widget>[
        //     new Align(
        //       alignment: new FractionalOffset(0.0, 0.0),
        //       child: new Image.network('http://up.qqjia.com/z/25/tu32710_10.jpg'),
        //     ),
        //     new Align(
        //       alignment: FractionalOffset.bottomRight,
        //       child: new Image.network('http://up.qqjia.com/z/25/tu32710_11.jpg'),
        //     ),
        //   ]
        // ),
        // body: new Padding(//new Padding有間隔
        //   padding: const EdgeInsets.all(50.0),
        //   child: new Center(child:new Image.network('http://up.qqjia.com/z/25/tu32710_4.jpg')),
        // ),

//new SizeBox限制大小
        // body: new SizedBox(
        //   width: 250.0,
        //   height: 250.0,
        //   child: new Container(
        //     child: new Text("text"),
        //     decoration: new BoxDecoration(
        //      // backgroundColor: Colors.lightBlueAccent[100],
        //     ),
        //   ),
        // ),

//按比例
        // body: new AspectRatio(
        //   aspectRatio: 3.0 / 2.0,
        //   child: new Container(
        //     decoration: new BoxDecoration(
        //       backgroundColor: Colors.lightBlueAccent[100],
        //     ),
        //   ),
        // ),
//裝飾器
        // body: new DecoratedBox(
        //   decoration: new BoxDecoration(
        //       gradient: new LinearGradient(//new LinearGradient線性漸變
        //     begin: const FractionalOffset(0.0, 0.0),//begin end開始結束的定位
        //     end: const FracbanntionalOffset(1.0, 1.0),
        //     colors: <Color>[const Color(0xffff2cc), const Color(0xffff6eb4)],
        //   )),
        //   child: new Container(
        //     width: 250.0,
        //     height: 250.0,
        //   ),
        // ),

        body: new Center(
          child: new Opacity(//new Opacity設置對應的透明度
            opacity: 0.1,//opacity:0.1 設置0.1的透明度
            child: new Container(
              width: 250.0,
              height: 100.0,
              decoration: new BoxDecoration(//new BoxDecoration
                //backgroundColor: const Color(0xff000000),
                color:Colors.pink//切記，這裏沒有backgroundColor了 只能用color來替換
              ),
            ),
          ),
        ));
  }
}
