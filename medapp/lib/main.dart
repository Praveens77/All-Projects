import 'package:flutter/cupertino.dart';
import 'package:medapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and width of our device
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                SvgPicture.asset("assets/images/crooked-bank.svg"),
                Text("data")
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            //Here the height of the container is 45 % of our total height
            height: size.height *.45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/—Pngtree—smoke flying up sparks and_6270016.png"), //edit this image
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child:
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFF2BEA1),
                      shape: BoxShape.circle,
                    ),
                      child: SvgPicture.asset("assets/images/crooked-bank.svg"),
                    ),
                  ),
                    Text(
                    "Welcome ! \nStay Healthy !!",
                      style: TextStyle(
                        fontFamily: "Cairo-Bold.ttf", fontSize: 40, fontWeight: FontWeight.bold
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 50),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search Here...",
                        icon: SvgPicture.asset("assets/images/crooked-bank.svg"),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
          ),
          )
        ],
      ),
    );
  }
}