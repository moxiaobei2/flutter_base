import 'package:flutter/material.dart';
import 'package:myfirst/pages/second_page.dart';

class ListDemo extends StatefulWidget {
  @override
  _ListDemoState createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {

  Widget buildListTile(BuildContext context, String item) {
    return new ListTile(
      isThreeLine: true, //子item的是否为三行
      dense: false, //是否稠密
      leading: new CircleAvatar(
        //头部
        child: new Text(item),
      ), //左侧首字母图标显示，不显示则传null
      title: new Text('子item的标题'), //子item的标题
      subtitle: new Text('子item的内容'), //子item的内容
      trailing: new Icon(
        // trailing 表尾部，即右侧
        Icons.arrow_right,
        color: Colors.green,
      ), //显示右侧的箭头，不显示则传null
      onTap: (){ //设置跳转路由
       Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) =>
                          new SecondPage(title: item)));
      },
    );
  }

  Widget build(BuildContext context) {
    List<String> items=<String>['A','B','C','D','E','F','G','H','J'];//设置初始化的值
    Iterable<Widget> listTitles=items.map((String item){//将items的内容设置给Adapter
      return buildListTile(context,item);
    });
    listTitles=ListTile.divideTiles(context: context,tiles: listTitles);//给Listview设置分隔线
    return new Scaffold(appBar: new AppBar(title: new Text('ListViewDemo'),),
      body: new Scrollbar(child: new ListView(
        children: listTitles.toList(),//添加ListView控件
        
      )),);
  }
}
