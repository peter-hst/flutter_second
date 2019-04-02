import 'package:flutter/material.dart';
class BottomNavigationBarDemo  extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarState();
  }

}

class _BottomNavigationBarState extends State<BottomNavigationBarDemo>{
  int _currentIndex = 0;
  void _onTapHandler(int index){
    setState(()=>{
      _currentIndex = index
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
        currentIndex: _currentIndex, // 导航菜单激活的状态使用这个属性控制的
        onTap: _onTapHandler,
        type : BottomNavigationBarType.fixed, // 图标超过4个下面的bar就会变成白色的
        fixedColor: Colors.black, // 设置图标激活时的颜色
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore), title: Text('Explore')),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), title: Text('History')),
          BottomNavigationBarItem(
              icon: Icon(Icons.list), title: Text('List')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('My'))
        ]);
  }

}