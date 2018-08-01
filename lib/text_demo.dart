import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本控件'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              new Text(
                '红色+黑色删除线+25号',
                style: new TextStyle(//new TextStyle  color:const Color oxff+颜色值 
                  color: const Color(0xffff0000),
                  decoration: TextDecoration.lineThrough,//TextDecoration文字装饰 TextDecoration.lineThrough  中划线颜色值也可以设置 decorationColor
                  decorationColor: const Color(0xff000000),
                  fontSize: 25.0,
                ),
              ),
              new Text(
                '橙色+下划线+24号',
                style: new TextStyle(
                  color: const Color(0xffff9900),
                  decoration: TextDecoration.underline,// TextDecoration.underLine
                  fontSize: 24.0,
                ),
              ),
              new Text(
                '虚线上划线+23号+倾斜',
                style: new TextStyle(
                  decoration: TextDecoration.overline,//overline上划线 TextDecorationStyle.dashed
                  decorationStyle: TextDecorationStyle.dashed,
                  fontSize: 23.0,
                  fontStyle: FontStyle.italic,//FontStyle.italic
                ),
              ),
              new Text(
                'serif字体+24号',
                style: new TextStyle(
                  fontFamily: 'serif',//fontFamily
                  fontSize: 26.0,
                ),
              ),
              new Text(
                'monospace字体+24号+加粗',
                style: new TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,//fontWeight:FontWeight.bold加粗字体
                ),
              ),
              new Text(
                '天蓝色+25号+2行跨度',
                style: new TextStyle(
                  color: const Color(0xff4a86e8),
                  fontSize: 25.0,
                  height: 2.0,//height：2.02行跨度
                ),
              ),
              new Text(
                '24号+2个字母间隔',
                style: new TextStyle(
                  fontSize: 24.0,
                  letterSpacing: 2.0,//letterSpacing间隔
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
