import 'package:flutter/material.dart';
import 'package:flutter_second/model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //条子,口子的意思, google翻译是从一大块中切开一个口子
      body: CustomScrollView(
        slivers: <Widget>[
          SliverSafeArea( // SlaverSafeArea 是顶部超出屏幕部分,保证内容不出屏幕,在安全区域内显示
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverGridDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            childAspectRatio: 1.0, //控制网格显示的比例
            mainAxisSpacing: 8.0),
        delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) => Container(
                  child:
                      Image.network(posts[index].imageUrl, fit: BoxFit.cover),
                ),
            childCount: posts.length //设置列表的长度
            ));
  }
}
