import 'package:flutter/material.dart';
import 'package:flutter_second/demo/basic_demo.dart';
import 'package:flutter_second/demo/bottom_navigation_bar_demo.dart';
import 'package:flutter_second/demo/drawer_demo.dart';
import 'package:flutter_second/demo/layout_demo.dart';
import 'package:flutter_second/demo/listview_demo.dart';
import 'package:flutter_second/demo/sliver_demo.dart';
import 'package:flutter_second/demo/view_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      debugShowCheckedModeBanner: false, //去掉debug标签
        home: Home(),
//        home: SliverDemo(),
        theme: ThemeData(
            primaryColor: Colors.yellow, //主颜色
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            // tab按下去的背景色,整个主题的按下去背景色
            splashColor: Colors.white70 // 长按下tab水波纹效果颜色
            ) // app顶部bar颜色
        );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('这只是一个标题'),
            actions: <Widget>[
              IconButton(
                  //appbar
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: () => debugPrint('Search button is pressed.')),
              IconButton(
                  //appbar
                  icon: Icon(Icons.more_horiz),
                  tooltip: 'More',
                  onPressed: () => debugPrint('More button is pressed.'))
            ],
            //右侧按钮
            elevation: 30.0,
            //appbar 阴影 默认4.0
            bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                //Tab未选中的颜色
                indicatorColor: Colors.black54,
                //tab 选中时下划线颜色
                indicatorSize: TabBarIndicatorSize.label,
                //下划线长度
                indicatorWeight: 1.0,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike)),
                  Tab(icon: Icon(Icons.view_quilt)),
//                  Tab(icon: Icon(Icons.view_agenda)),
                ]),
          ),
          body: TabBarView(children: <Widget>[
//            Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
            ListViewDemo(),
//            Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            BasicDemo(),
//            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
//            LayoutDemo(),
            SliverDemo(),
            ViewDemo(),
//            SliverDemo(),
          ]),
          drawer: Container(
            color: Colors.white,
//            padding: EdgeInsets.all(8.0),
            child: DrawerDemo(),
          ),
          // 设置左侧抽屉
          endDrawer: Text('This is a right drawer'),
          //设置右边的抽屉
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
