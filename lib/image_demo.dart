import 'package:flutter/material.dart';
class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
          appBar: AppBar(
            title: Text('image demo'),
          ),
          body: Container(
            padding: EdgeInsets.all(32.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  new Image.network(
                    'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',//网络图片 并放大2倍
                    scale: 2.0,
                  ),
                 // new AssetImage(src)设置本地图片 
                ],
              ),
            ),
          ),
        );
    
  }
}