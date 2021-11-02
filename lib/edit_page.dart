import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_design/profile%20page.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text(
    "Edit Page",
    style: TextStyle(
      fontStyle: FontStyle.italic,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: Colors.black,

    ),
  ),
  centerTitle: true,
  leading: IconButton(
    icon: Icon(
      Icons.person,
    color: Colors.white,
    ),
    iconSize: 40,
    onPressed: (){
    Navigator.pop(context);
    },

  ),
  actions: [
    InkWell(
      onTap: () {
        Navigator.push(

            context,
            MaterialPageRoute(
                builder: (context)=>ProfilePage()
            ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
          top: 10,
          left: 20,
          right: 5,
        ),
        child: Container(
          height: 25,
          width: 105,

          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade700,
            width: 3,
              style:BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(15),
            color: Colors.green.shade500,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Save",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,

                ),
              ),
              Icon(
                Icons.save_rounded,
                color: Colors.black,
                size: 15,
              )
            ],
          ),
        ),
      ),
    )
  ],
),
    );
  }
}
