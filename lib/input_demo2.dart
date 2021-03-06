import 'package:flutter/material.dart';

class InputDemo2 extends StatefulWidget {
  @override
  _InputDemo2 createState() => new _InputDemo2();
}

class _InputDemo2 extends State<InputDemo2> {

  // InputValue：文本输入字段的配置信息
  InputValue _phoneValue = const InputValue();
  InputValue _passwordValue = const InputValue();

  void _showMessage(String name) {
    showDialog<Null>(
      context: context,
      child: new AlertDialog(
        content: new Text(name),
        actions: <Widget>[
          new FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: new Text('确定')
          )
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('直接输入')
      ),
      body: new Column(
        children: <Widget> [
          new Input(
            // value：文本输入字段的当前状态
            value: _phoneValue,
            // keyboardType：用于编辑文本的键盘类型
            keyboardType: TextInputType.number,
            // icon：在输入字段旁边显示的图标
            icon: new Icon(Icons.account_circle),
            // labelText：显示在输入字段上方的文本
            labelText: '手机',
            // hintText：要在输入字段中内嵌显示的文本
            hintText: '请输入手机号码',
            // onChanged：正在编辑的文本更改时调用
            onChanged: (InputValue value) {
              setState((){
                _phoneValue = value;
              });
            }
          ),
          new Input(
            value: _passwordValue,
            // obscureText：是否隐藏正在编辑的文本
            obscureText: true,
            labelText: '密码',
            onChanged: (InputValue value) {
              setState((){
                _passwordValue = value;
              });
            },
            // onSubmitted：当用户在键盘上点击完成编辑时调用
            onSubmitted: (InputValue value) {
              if(value.text.length<6){
                _showMessage('密码不少于6位');
              }
            }
          ),
          new RaisedButton(
            child: new Text('提交'),
            onPressed: () {
              _showMessage(_phoneValue.text+'/'+_passwordValue.text);
            }
          )
        ]
      )
    );
  }
}

