import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_design/profile%20page.dart';

class Following_page extends StatefulWidget {
  const Following_page({Key key}) : super(key: key);

  @override
  _Following_pageState createState() => _Following_pageState();
}

class _Following_pageState extends State<Following_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  leading: IconButton(
    icon: Icon(
      Icons.arrow_back_ios_outlined,
      color: Color.fromRGBO(25, 25, 35, .6),
    ),
    iconSize: 25,
    onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage(),
    ),
    );
    } ,
  ),
  title: Text(
    "Following Page",
    style: TextStyle(
      color: Color.fromRGBO(25, 25, 35, .6),
      fontWeight: FontWeight.w700,
      fontSize: 25,

    ),
  ),
  centerTitle: true,
  actions: [
    IconButton(icon:Icon(
      Icons.refresh_outlined,
      color: Color.fromRGBO(25, 25, 35, .6),
    ) ,
        iconSize:25 ,
        onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context)=>Following_page(),
        ),
        );
        },
    ),

  ],
  backgroundColor: Color.fromRGBO(240, 240, 240, .6),
),

    );
  }
}
