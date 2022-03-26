import 'dart:async';

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Timer",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  TabController tb;
  int hour=0;
  int min=0;
  int sec=0;
  String displaytime="";
  bool start=true;
  bool stop=true;
  int timertime;
  final dur = const Duration(seconds: 1);

  @override
  void initState(){
    tb = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  void strt(){
    timertime= ((hour*3600)+(min*60)+sec);
    //debugPrint(timertime.toString());
    Timer.periodic(dur, (Timer t) {
      setState(() {
        if(timertime<1){
          t.cancel();
        }
        else if(timertime<60) {
          displaytime = timertime.toString();
          timertime - timertime - 1;
        }
        else if (timertime<3600) {
          int m = timertime ~/60;
          int s = timertime - (60*m);
          displaytime = m.toString() + ":" + s.toString();
          timertime = timertime-1;
        }
        else {
          int h = timertime ~/ 3600;
          int t = timertime - (3600 * h);
          int m = t ~/ 60;
          int s = t - (60 * m);
          displaytime = h.toString() + ":" + m.toString() + ":" + s.toString();
          timertime = timertime - 1;
        }
      });
    });
  }

  void stp() {}

  Widget timer(){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(
                            bottom: 10.0,
                        ),
                      child: Text(
                        "HH",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    NumberPicker.integer(
                      initialValue: hour,
                      minValue: 0,
                      maxValue: 23,
                      listViewWidth: 60.0,
                      onChanged: (val){
                        setState(() {
                          hour=val;
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 10.0,
                      ),
                      child: Text(
                        "MM",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    NumberPicker.integer(
                      initialValue: min,
                      minValue: 0,
                      maxValue: 59,
                      listViewWidth: 60.0,
                      onChanged: (val){
                        setState(() {
                          min=val;
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 10.0,
                      ),
                      child: Text(
                        "SS",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    NumberPicker.integer(
                      initialValue: sec,
                      minValue: 0,
                      maxValue: 59,
                      listViewWidth: 60.0,
                      onChanged: (val){
                        setState(() {
                          sec=val;
                        });
                      },
                    ),
                  ],
                ),
              ],
            )
          ),
          Expanded(
            flex: 1,
            child: Text(
              displaytime,
              style: TextStyle(
                color: Colors.purple,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                    onPressed: start ? strt : null,
                  color: Colors.purple,
                    padding: EdgeInsets.symmetric(
                      horizontal: 35.0,
                      vertical: 12.0,
                    ),
                    child: Text(
                      "Start",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                ),
                RaisedButton(
                  onPressed: stop ? null : stp,
                  color: Colors.purple,
                  padding: EdgeInsets.symmetric(
                    horizontal: 35.0,
                    vertical: 12.0,
                  ),
                  child: Text(
                    "Stop",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Watch",
        ),
        centerTitle: true,
        bottom: TabBar(
          tabs: <Widget>[
            Text(
              "Timer",
            ),
            Text(
              "Stopwatch",
            ),
          ],
          labelStyle: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
          labelPadding: EdgeInsets.only(
            bottom: 10.0,
          ),
          unselectedLabelColor: Colors.black54,
          controller: tb,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          timer(),
          Text(
              "Stopwatch"
          ),
        ],
        controller: tb,
      ),
    );
  }
}

