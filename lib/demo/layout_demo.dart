import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*return Column(
      children: <Widget>[
        IconBadge(Icons.pool,size: 64.0,)
      ],
    );*/
    return Container(
      child: Column(  //Row横着排,Column竖着排
      crossAxisAlignment: CrossAxisAlignment.stretch,
//        主轴, Row的主轴是横向的,Column的主轴是纵向的
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //spaceEvenly表示平均分
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(Icons.beach_access,size:64.0),
          IconBadge(Icons.airplanemode_active)
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon,size: size,color: Colors.white),
      width: size + 60,
      height: size+60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
