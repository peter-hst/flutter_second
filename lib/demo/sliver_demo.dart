import 'package:flutter/material.dart';
import 'package:flutter_second/model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //条子,口子的意思, google翻译是从一大块中切开一个口子
      body: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  childAspectRatio: 1.0, //控制网格显示的比例
                  mainAxisSpacing: 8.0),
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) => Container(
                        child: Image.network(posts[index].imageUrl,
                            fit: BoxFit.cover),
                      ),
                  childCount: posts.length //设置列表的长度
              ))
        ],
      ),
    );
  }
}
