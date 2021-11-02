import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_design/edit_page.dart';
import 'package:flutter_design/follwing_page.dart';
import 'package:flutter_design/post_page.dart';
import 'package:flutter_design/messenger_page.dart';
import 'package:flutter_design/follower_page.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back
          ),
        ),
        actions: [
          Container(
            height: 25,
            width: 105,
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
              bottom: 15,
            ),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:(context)=>EditPage()
                    ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
             color: Colors.lime.shade500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Edit",
                    style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,

                    ),
                  ),
                  Icon(Icons.create_rounded,
                  size:15,
                    color: Colors.black,
                  ),


                ],
              ),
            ),




            ),

        ],
        title: Text(
          "Profile Page",
          style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),

      body:SingleChildScrollView(
        child: Align(
            alignment: Alignment.center,
            child: Container(
              height: MediaQuery.of(context).size.height/1,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Profile image,name,address container
                  Container(
                    height: MediaQuery.of(context).size.height/6,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 10),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //profile image
                        Container(
                          height: MediaQuery.of(context).size.height/6,
                          width: MediaQuery.of(context).size.width/2.6,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "images/salman.jpg"
                              ),
                              fit: BoxFit.cover,

                            ),
                            border: Border.all(
                              color: Color.fromRGBO(105, 107, 103, 1),
                              width: 3,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromRGBO(250, 251, 252, 1),
                          ),
                        ),
                        //Address and name container
                        Container(
                          height: MediaQuery.of(context).size.height/7,
                          width: MediaQuery.of(context).size.width/2,
                          child:Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                //name text
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 20,

                                  ),
                                  child: Text(
                                    "Salman Rabbi",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      color: Color.fromRGBO(34, 35, 40, 1),

                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                //address text
                                Text("Kashipur Padma Road,Khalispur,Khulna",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16,
                                    color: Color.fromRGBO(45, 46, 47, 1),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //user bio container

                  Container(
                    height: MediaQuery.of(context).size.height/3,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/10,
                          width: MediaQuery.of(context).size.width,

                          child: Row(
                            children: [
                              Text(
                                "Bio",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 19,
                                  color: Color.fromRGBO(56, 60, 80, 1),
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.info_outline_rounded,
                                size:19,
                                color: Color.fromRGBO(56, 60, 80, 1),
                              ),
                            ],
                          ),
                        ),

                        //bio container

                        Container(
                          height: MediaQuery.of(context).size.height/5,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "I am Salman Rabbi .I am from Bagerhat."
                                "I am a student and also serving myself as a teacher in Ummul Qura Academy since March 2021",
                            style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(100, 120, 140, 1),
                            ),
                            textAlign: TextAlign.start,
                          ),

                        ),


                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/5,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 17),
                    child: Align(
                        alignment:Alignment.center,
                        child:Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          direction: Axis.horizontal,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height/17,
                              width:MediaQuery.of(context).size.width/3 ,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(250, 250, 250, 6),

                                  border: Border.all(
                                    color: Color.fromRGBO(31,31,31,1, ),
                                    width: 3,
                                    style: BorderStyle.solid,
                                  )
                              ),
                              child: FlatButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:(context)=>PostPage()
                                  ),
                                  );
                                },
                                icon: Icon(
                                  Icons.post_add_sharp,
                                  size: 15,
                                  color: Color.fromRGBO(21,21,21,1, ),
                                ),
                                label: Text(
                                  "Posts",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Color.fromRGBO(21,21,21, 1,),

                                  ),
                                ),
                              ),
                            ),

                            //Following button container

                            Container(

                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/2.9,

                              decoration: BoxDecoration(
                                color: Color.fromRGBO(250,250,250, 1),
                                border: Border.all(
                                  color: Color.fromRGBO(21,21,21,1),
                                  width: 3,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: FlatButton.icon(onPressed: (){
                                Navigator.push(context,
                                  MaterialPageRoute(
                                    builder: (context)=>MessengerPage()
                                ),
                                );
                              },
                                icon: Icon(Icons.message_outlined,
                                  size: 15,
                                  color: Color.fromRGBO(21,21,21,1),
                                ),
                                label: Text(
                                  "Messenger",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(21,21,21,1,),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                              ),
                            ),
                            //follower button container
                            Container(
                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/3,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 3,
                                  style: BorderStyle.solid,
                                  color: Color.fromRGBO(21,21,21,1, ),

                                ),
                              ),
                              child: FlatButton.icon(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=>Follower_page()),);
                                  },
                                  icon:Icon(Icons.follow_the_signs_rounded,
                                    size: 15,
                                    color: Color.fromRGBO(21,21,21,1,),
                                  ),
                                  label:Text(
                                    "Follower",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(21,21,21,1, )
                                    ),
                                  )
                              ),
                            ),

                            //Following button container

                            Container(
                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/3,
                              decoration: BoxDecoration(
                                color:Color.fromRGBO(250, 250, 250, 1) ,
                                border:Border.all(
                                  color: Color.fromRGBO(21,21,21,1,),
                                  width: 3,
                                  style: BorderStyle.solid,
                                ),

                              ),
                              child: FlatButton.icon(
                                icon: Icon(
                                  Icons.add_circle,
                                  size: 15,
                                  color: Color.fromRGBO(21, 21, 21, 1),
                                ),
                                onPressed:() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Following_page()),);
                                } ,

                                label:Text(
                                  "Following",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(21, 21, 21, 1),
                                  ),
                                ) ,
                              ),
                            ),
                          ],

                        )
                    ),

                  ),



                  // post button container


                ],
              ),
            ),

          )

      ),



    );
  }
}
