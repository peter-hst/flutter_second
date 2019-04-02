import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      debugShowCheckedModeBanner: false, //去掉debug标签
        home: Home(),
        theme: ThemeData(
            primaryColor: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5), // tab按下去的背景色,整个主题的按下去背景色
          splashColor: Colors.white70 // 长按下tab水波纹效果颜色
        ) // app顶部bar颜色
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
              leading: IconButton( //appbar 左边的按钮
                  icon: Icon(Icons.menu),
                  tooltip: 'Navigration',
                  onPressed: () =>
                      debugPrint('Navigration button is pressed.')),
              title: Text('B标题'),
              actions: <Widget>[
                IconButton( //appbar
                    icon: Icon(Icons.search),
                    tooltip: 'Search',
                    onPressed: () => debugPrint('Search button is pressed.')),
                IconButton( //appbar
                    icon: Icon(Icons.more_horiz),
                    tooltip: 'More',
                    onPressed: () => debugPrint('More button is pressed.'))
              ],
              //右侧按钮
              elevation: 30.0,
              //appbar 阴影 默认4.0
              bottom: TabBar(
                unselectedLabelColor: Colors.black38, //Tab未选中的颜色
                indicatorColor: Colors.black54, //tab 选中时下划线颜色
                  indicatorSize: TabBarIndicatorSize.label, //下划线长度
                  indicatorWeight: 1.0,
                  tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike))
              ]),
            ),
            body: TabBarView(children: <Widget>[
              Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            ]
            ),
          drawer: Container(
            color: Colors.white,
            padding: EdgeInsets.all(8.0),
            child: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Text('header'.toUpperCase()),
                    decoration:BoxDecoration(
                      color:Colors.grey[100]
                    ) ,
                  ),
                  ListTile(
                    title:Text('Messages',textAlign: TextAlign.right),
                    trailing: Icon(Icons.message,color:Colors.black12,size:22.0), //后面显示图标 leading: 是前面显示图标
                  ),
                  ListTile(
                    title:Text('Favorite',textAlign: TextAlign.right),
                    trailing: Icon(Icons.favorite,color:Colors.black12,size:22.0), //后面显示图标 leading: 是前面显示图标
                  ),
                  ListTile(
                    title:Text('Settings',textAlign: TextAlign.right),
                    trailing: Icon(Icons.settings,color:Colors.black12,size:22.0), //后面显示图标 leading: 是前面显示图标
                  )
                ],
              ),
            ),
          ), // 设置左侧抽屉
          endDrawer: Text('This is a right drawer'), //设置右边的抽屉
        )
    );
  }
}
