import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      debugShowCheckedModeBanner: false, //去掉debug标签
      home: Home(),
      theme: ThemeData(primaryColor: Colors.yellow) // app顶部bar颜色
    );
  }
}

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('B标题'),
          elevation: 0.0, //appbar 阴影 默认4.0
        ),
        body: ListViewDemo()
    );
  }
}
