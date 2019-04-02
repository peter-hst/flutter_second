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
//      crossAxisAlignment: CrossAxisAlignment.stretch,
//        主轴, Row的主轴是横向的,Column的主轴是纵向的
        mainAxisAlignment: MainAxisAlignment.center, //spaceEvenly表示平均分
        children: <Widget>[
//          IconBadge(Icons.pool),
//          IconBadge(Icons.beach_access,size:64.0),
//          IconBadge(Icons.airplanemode_active)
        SizedBox(child: Container(
          width: 200.0,
          height: 300.0,
          alignment: Alignment(0.6, -0.8), // 对齐
          decoration: BoxDecoration(
            color: Color.fromRGBO(3, 54, 255, 1.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Icon(Icons.ac_unit,color: Colors.white,size:32.0),
        )),
        SizedBox(
          height:32.0
        ),
        SizedBox(child: Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: Color.fromRGBO(3, 54, 255, 1.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Icon(Icons.brightness_2,color: Colors.white,size:32.0),
        ))
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
