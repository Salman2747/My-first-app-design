import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_design/profile%20page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            //Image Container
            Container(
              margin: EdgeInsets.only(
                top: 40,
              ),
          height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width/2,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Color.fromRGBO(191, 220, 213, 1),
                  width: 3,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("images/ICT.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            //Text Container
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width/1.5,
              margin: EdgeInsets.only(
                bottom: 15,
                top: 25,
              ),
              child: Text(
                "Welcome To flutter advance design course."
                    "This course is created by  an ICT Division Bangladesh."
                    "Let's Enter in this course.",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,

                  color:Color.fromRGBO(44, 27, 138, 1),
                  wordSpacing: 2,
                  decorationStyle: TextDecorationStyle.wavy,
                  decorationColor: Color.fromRGBO(230, 27, 173, 1),
                  decorationThickness: 3,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //Button Container Inkwell

               InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfilePage()
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/3,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(210, 116, 15,1),
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(229, 36, 36,1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Start",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(74, 32, 62,1),

                      ),
                      ),
                      Icon(

                        Icons.arrow_forward_ios_rounded,
                        size: 25,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),

            )

          ],
        ),
      ),
    );
  }
}
