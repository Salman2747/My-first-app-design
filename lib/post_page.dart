import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_design/profile%20page.dart';
import 'package:flutter_design/models/models.dart';


List<Postmodel> postmodels = [
  Postmodel(
      username:  "Salman Rabbi",
      profileImageURL: "images/salman.jpg",
      caption: "Khulna Government Mahila College",
      address: "Jalil - Sarani, Khulna,Khulna,Bangaldesh",
      likes: 34,
      postImageURL: "images/Posts/post_1.jpg"),
  Postmodel(
      username: "Salman Rabbi",
      profileImageURL:  "images/salman.jpg",
      caption: "Khulna College",
      address: "Seikh Para Main Rd, Khulna,Khulna,Bangladesh",
      likes: 234,
      postImageURL: "images/Posts/post_2.jpg"),
  Postmodel(
      username: "Salman Rabbi",
      profileImageURL:  "images/salman.jpg",
      caption: "Ahsanullah College",
      address: "KDA Ave, Khulna,Khulna,Bangladesh",
      likes: 57,
      postImageURL: "images/Posts/post_3.jpg"),
  Postmodel(
      username: "Salman Rabbi",
      profileImageURL: "images/salman.jpg",
      caption: "Azam Khan Government Commerce College",
      address: "Babu Khan Rd, Khulna,Khulna,Bangladesh",
      likes: 43,
      postImageURL: "images/Posts/post_4.jpg"),
  Postmodel(
      username: "Salman Rabbi",
      profileImageURL:  "images/salman.jpg",
      caption: "Govt. Brajalal (BL) College",
      address: "Kashipur, B.L. College Rd, Khulna,Khulna,Bangladesh",
      likes: 56,
      postImageURL: "images/Posts/post_5.jpg"),
  Postmodel(
      username: "Salman Rabbi",
      profileImageURL:  "images/salman.jpg",
      caption: "Govt. M. M. City College",
      address: "300 Khan Jahan Ali Rd, Khulna-9100,Khulna,Bangladesh",
      likes: 65,
      postImageURL: "images/Posts/post_6.jpg"),
  Postmodel(
      username:"Salman Rabbi",
      profileImageURL: "images/salman.jpg",
      caption: "Khulna Public College",
      address: "public college, road, Khulna-9000,Khulna,Bangladesh",
      likes: 67,
      postImageURL: "images/Posts/post_7.jpg"),
  Postmodel(
      username:"Salman Rabbi",
      profileImageURL: "images/salman.jpg",
      caption: "Khulna Government College",
      address: "Hasanbag Road, Khulna,Khulna,Bangladesh",
      likes: 76,
      postImageURL: "images/Posts/post_8.jpg"),
  Postmodel(
      username: "Salman Rabbi",
      profileImageURL:  "images/salman.jpg",
      caption: "Government Sundarban Adarsha College",
      address: "91 Khanjhan Ali road, Jessore-Dhaka Highway, Khulna,Bangladesh",
      likes: 3343,
      postImageURL: "images/Posts/post_9.jpg"),
  Postmodel(
      username:"Salman Rabbi",
      profileImageURL:  "images/salman.jpg",
      caption: "Khulna Islamia Degree College",
      address: " M A Bari St, Khulna,Khulna,Bangladesh",
      likes: 343,
      postImageURL: "images/Posts/post_10.jpg"),
];

class PostPage extends StatefulWidget {
  const PostPage({Key key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  leading: IconButton(
    icon: Icon(
      Icons.arrow_back_ios_outlined,
      color: Color.fromRGBO(21, 21, 21, .6),
    ),
    iconSize:25 ,
    onPressed: () {Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=>ProfilePage(),
    ),
    );
    },
  ),
  title: Text(
    "Post Page",
    style: TextStyle(
      color: Color.fromRGBO(21, 21, 21, .6),
      fontWeight: FontWeight.w700,
      fontSize: 25,

    ),
  ),
  actions: [
    IconButton(icon: Icon(
      Icons.refresh_outlined,
      color: Color.fromRGBO(21, 21, 21, .6),
    ),
        iconSize: 25,
        onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context)=>PostPage(),
        ),
        );
    },
    ),
  ],
  centerTitle: true,
),
     body: Align(
       alignment: Alignment.centerLeft,
       child: ListView.builder(
         padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
         itemCount: postmodels.length,
         itemBuilder: (BuildContext context, int index) {
           return Container(
       height: MediaQuery.of(context).size.height/1.5,
             width: MediaQuery.of(context).size.width,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [

                 //Header Row Profile page

                 Row(
                   children: [
                     CircleAvatar(
                       radius: 34,
                       backgroundImage: AssetImage("${postmodels[index].profileImageURL}"),
                     ),
                     Expanded(child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 15),
                       child: RichText(
                         textAlign: TextAlign.justify,
                         text: TextSpan(
                           text: "${postmodels[index].username}\n",
                           style: TextStyle(
                             fontSize: 17,
                             fontWeight: FontWeight.w700,
                             color: Color.fromRGBO(0, 0, 0,.6),

                           ),
                           children: [
                             TextSpan(
                               text: "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}/${DateTime.now().hour}",
                               style: TextStyle(
                                 fontWeight: FontWeight.w700,
                                 fontSize: 17,
                                 color: Color.fromRGBO(0,0,0,.6),
                               )
                             ),
                           ]
                         ),
                       ),
                     ),
                     ),
                   ],
                 ),
                 Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                   child: Container(
                     width: MediaQuery.of(context).size.width,
                     height: MediaQuery.of(context).size.height/9,
                     child: Column(
                       children: [

                         //Address Row

                         Container(
                           height: MediaQuery.of(context).size.height/30,
                           width: MediaQuery.of(context).size.width,
                           child: Row(
                             children: [
                               Icon(
                                 Icons.location_on_outlined,
                                 size: 15,
                                 color: Color.fromRGBO(0,0, 0, .6),
                               ),
                               Padding(
                                 padding: EdgeInsets.symmetric(horizontal: 10),
                                 child: Text(
                                   "${postmodels[index].address}",
                                   style: TextStyle(
                                     color: Color.fromRGBO(0,0,0,.6),
                                     fontSize: 10,
                                     fontWeight: FontWeight.w500,
                                   ),
                                   textAlign: TextAlign.justify,
                                 ),
                               )
                             ],
                           ),
                         ),

                         //Caption Container
                         Padding(padding: EdgeInsets.symmetric(vertical: 10),
                         child: Container(
                           height: MediaQuery.of(context).size.height/25,
                           width: MediaQuery.of(context).size.width,
                           child: Text(
                             "${postmodels[index].caption}",
                             style: TextStyle(
                               color: Color.fromRGBO(0, 0, 0, .6),
                               fontWeight: FontWeight.w600,
                               fontSize: 15,
                             ),
                           ),
                         ),
                         ),
                       ],
                     ),
                   ),
                 ),

                 //Post Image Container

                 Padding(padding: EdgeInsets.symmetric(vertical: 5),
                 child: Container(
                   height: MediaQuery.of(context).size.height/4,
                   width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage(
                         "${postmodels[index].postImageURL}",
                       ),
                       fit: BoxFit.fill,
                     ),
                     borderRadius: BorderRadius.circular(15),
                   ),
                 ),
                 ),

                 //Share, Comments, and likes Button padding
               ],
             ),
           );
         },
       ),
     ),

    );
  }
}

