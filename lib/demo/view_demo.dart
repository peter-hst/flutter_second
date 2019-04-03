import 'package:flutter/material.dart';
import '../model/post.dart';
class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewDemoCount();
  }

}
class ViewDemoCount extends StatelessWidget {
  List<Widget> _builderTiles(int length) {
    return List.generate(
        length,
        (int index) => Container(
              color: Colors.grey[300],
              alignment: Alignment(0.0, 0.0),
              child: Text(
                'Item $index',
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
            ));
  }
  @override
  Widget build(BuildContext context) {
//    return ViewDemoBuilderDemo();
//    return GridViewDemo();
    return GridView.count(
      scrollDirection: Axis.horizontal,
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _builderTiles(100),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: <Widget>[
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'item',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}

class ViewDemoBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(posts[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(posts[index].author)
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: posts.length, itemBuilder: _pageItemBuilder);
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      /*  pageSnapping: false, // true:手指滑动page到屏幕一半时自动翻页,
      reverse: true, // 倒序排列视图*/
      scrollDirection: Axis.horizontal, //控制视图滚动的方向
      controller: PageController(
          initialPage: 1,
          keepPage: true, //默认是true,这个参数表示是否记住当前页
          viewportFraction: 0.80 // 视图占据屏幕尺寸, 默认1.0表示占据所有
          ),
      onPageChanged: (currentPage) =>
          debugPrint('current page at the $currentPage'),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text('ONE',
              style: TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text('TWO',
              style: TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text('THREE',
              style: TextStyle(fontSize: 32.0, color: Colors.white)),
        )
      ],
    );
  }
}
