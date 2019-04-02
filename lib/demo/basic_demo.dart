import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 16.0);
  final String _author = '李白';
  final String _title = '将近酒';

  @override
  Widget build(BuildContext context) {
    return Container(
//        color: Colors.grey[100],
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
          alignment: Alignment.topCenter,
//            repeat: ImageRepeat.repeatY
          fit:BoxFit.cover,  // cover 保持图片比例填充整个容器
            colorFilter: ColorFilter.mode(Colors.indigoAccent[400].withOpacity(0.5), BlendMode.hardLight)
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Icon(Icons.pool, size: 32.0, color: Colors.white),
//                color: Color.fromRGBO(3, 54, 255, 1.0),
//                padding: EdgeInsets.only(left: 24.0,right: 8.0)),
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(8.0),
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
/*                  borderRadius:
                      BorderRadius.only(
                          topLeft: Radius.circular(64.0),
                          bottomLeft: Radius.circular(64.0)),*/
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0.0, 16.0),
                        color: Color.fromRGBO(16, 20, 188, 1.0),
                      blurRadius: 25.0,
                      spreadRadius: -9.0 //负数缩小阴影,正数扩大阴影
                    )
                  ],
                  shape: BoxShape.circle, //定义盒子的形状,rectangle矩形, circle圆形 注意圆形不能设置圆角 否则会冲突
                  /*gradient: RadialGradient(colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 28, 128, 1.0),
                  ]) ,*/
                  gradient: LinearGradient(colors: [ //线性渐变
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 28, 128, 1.0),
                  ],
                  begin: Alignment.topCenter,
                    end:Alignment.bottomCenter
                  ) ,
//                  borderRadius: BorderRadius.circular(16.0), //给border增加圆角
                  border: Border.all(
                    //所有边框设置相同
                    color: Colors.indigoAccent[100],
                    width: 3.0,
                    style: BorderStyle.solid,
                  )
//                给border的每个边增加样式
                  /* border:Border(
                    top: BorderSide(
                      color: Colors.indigoAccent[100],
                      width:3.0,
                      style: BorderStyle.solid
                    ),
                  bottom: BorderSide(
                      color: Colors.indigoAccent[100],
                      width:3.0,
                      style: BorderStyle.solid
                  )
                )*/
                  ),
            ),
          ],
        ));
  }

/*  @override
  Widget build(BuildContext context) { //RichText学习
    return RichText(
        text: TextSpan(
            text: 'Peter',
            style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 34.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w100),
            children: [
              TextSpan(
                  text: '.net',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.grey,

                  )
              )]));
  }*/
/*  @override
  Widget build(BuildContext context) { // Text学习
    return Text(
      '《$_title》 —— $_author。 君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停。与君歌一曲，请君为我倾耳听。钟鼓馔玉不足贵，但愿长醉不复醒。古来圣贤皆寂寞，惟有饮者留其名。陈王昔时宴平乐，斗酒十千恣欢谑。主人何为言少钱，径须沽取对君酌。五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }*/

}
