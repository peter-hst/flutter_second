import 'package:flutter/material.dart';
import 'package:flutter_second/model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //条子,口子的意思, google翻译是从一大块中切开一个口子
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // 给Sliver上面增加AppBar,当Sliver滚动的时候 它会渐渐消失,有个渐变消失的效果
//            pinned: true, //控制AppBar是否为固定的,true表示固定, 滚动的时候上面会出现阴影效果
            floating: true, // 设置appbar是否为浮动的
            expandedHeight: 178.0, // 设置伸展的高度
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Flutter nihao'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 15.0,
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.w400),
                ),
                background: Image.network(
                    'https://resources.ninghao.org/images/overkill.png',
                    fit: BoxFit.cover)),
          ),
          SliverSafeArea(
            // SlaverSafeArea 是顶部超出屏幕部分,保证内容不出屏幕,在安全区域内显示
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
//              sliver: SliverGridDemo(),
              sliver: SliverListDemo(),
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

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
      return Padding(
          padding: EdgeInsets.only(bottom: 32.0),
          child: Material(
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(16.0),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    //特定比例的盒子容器
                    aspectRatio: 16 / 9,
                    child:
                        Image.network(posts[index].imageUrl, fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].title,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        Text(
                          posts[index].author,
                          style: TextStyle(fontSize: 13.0, color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              )));
    }, childCount: posts.length)); //设置列表的长度
  }
}
