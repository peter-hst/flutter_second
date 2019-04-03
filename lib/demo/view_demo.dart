import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageViewDemo();
  }
}

class PageViewDemo extends StatelessWidget{
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