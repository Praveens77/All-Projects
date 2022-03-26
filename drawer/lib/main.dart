import 'package:drawer/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Drawer",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
            "=> Slide Drawer",
        style: TextStyle(
            color: Colors.black45,
            fontSize: 25.0,
            fontWeight: FontWeight.w600,
        ),
        ),
      ),
      drawer: Drawer(
          child: Container(
            color: Colors.greenAccent,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 100,
                    child: Image.asset("assets/images/pngwing.com.png",
                    fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Want to go to next Screen ?",
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 15.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Screen()));

                        },

                        child: Text("\n\n\nCLICK HERE",
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ) ,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
      ),
        body: Center(
          child: Padding(padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 200,
                  child: Image.asset(
                    "assets/images/1_7KZ9GsvveJDWUX6E8o9AyA.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),

          ),
        ),
    );
  }
}
