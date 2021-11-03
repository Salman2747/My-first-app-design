import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_design/profile%20page.dart';

class MessengerPage extends StatefulWidget {
  const MessengerPage({Key key}) : super(key: key);

  @override
  _MessengerPageState createState() => _MessengerPageState();
}

class _MessengerPageState extends State<MessengerPage> {
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
    onPressed:() {
      Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context)=>ProfilePage(),
      ),
      );
    } ,
  ),
  title: Text(
    "Messenger Page",
    style: TextStyle(
      color: Color.fromRGBO(25, 25, 25, .6),
      fontSize: 25,
      fontWeight: FontWeight.w700,

    ),
  ),
  actions: [
    IconButton(icon:Icon(
      Icons.refresh_outlined,
color: Color.fromRGBO(25, 25, 35, .6),
    ) ,
        iconSize:25 ,
        onPressed:() { Navigator.push(context, MaterialPageRoute(builder: (context)=>MessengerPage(),
        ),
        );
    },
    ),
  ],
),
      body: Center(
        child: Text(
          "Messenger Page"
        ),
      ),
    );
  }
}




