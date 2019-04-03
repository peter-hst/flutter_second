import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
    /*  pageSnapping: false, // true:手指滑动page到屏幕一半时自动翻页,
      reverse: true, // 倒序排列视图*/
    scrollDirection: Axis.vertical, //控制视图滚动的方向
      onPageChanged: (currentPage) => debugPrint('current page at the $currentPage'),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32.0, color: Colors.white)
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
              'TWO',
              style: TextStyle(fontSize: 32.0, color: Colors.white)
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
              'THREE',
              style: TextStyle(fontSize: 32.0, color: Colors.white)
          ),
        )
      ],
    );
  }
}
