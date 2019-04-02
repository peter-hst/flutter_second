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
              bottom: TabBar(tabs: <Widget>[
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
            )
        )
    );
  }
}
