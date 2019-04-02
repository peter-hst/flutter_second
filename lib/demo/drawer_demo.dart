import 'package:flutter/material.dart';
class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Peter',style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('peter.huang@163.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('http://img.qqzhi.com/uploads/2019-02-15/144652303.jpg'),
            ),
            decoration: BoxDecoration(
              color:Colors.yellow[400],
              image: DecorationImage(
                  image: NetworkImage('http://img.mp.itc.cn/upload/20170701/816ae84a7e0545ee85fc388cb7ad8e1a_th.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.5),
                      BlendMode.hardLight)
              ),

            ),
          ),
          ListTile(
            title:Text('Messages',textAlign: TextAlign.right),
            trailing: Icon(Icons.message,color:Colors.black12,size:22.0), //后面显示图标 leading: 是前面显示图标
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title:Text('Favorite',textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite,color:Colors.black12,size:22.0), //后面显示图标 leading: 是前面显示图标
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title:Text('Settings',textAlign: TextAlign.right),
            trailing: Icon(Icons.settings,color:Colors.black12,size:22.0), //后面显示图标 leading: 是前面显示图标
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}