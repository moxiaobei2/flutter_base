//绝对定位
import 'package:flutter/material.dart';

class PosiitonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('position绝对定位'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Stack(
            children: <Widget>[
              new Image.network(
                  'http://img2.cxtuku.com/00/13/12/s97783873391.jpg'),
              new Positioned(
                  left: 35.0,
                  right: 35.0,
                  top: 45.0,
                  child: new Text("我的绝对定位",
                      style:
                          new TextStyle(fontSize: 20.0, color: Colors.white)))
            ],
          ),
        ),
      ),
    );
  }
}
