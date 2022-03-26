import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Simple interest calculator",
    home: SIForm(),
  ));
}

class SIForm extends StatefulWidget {
  const SIForm({Key? key}) : super(key: key);

  @override
  State<SIForm> createState() => _SIFormState();
}

class _SIFormState extends State<SIForm> {
  var _currencies = ['Rupees', "Dollars", "Pounds"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Simple Interest Calculator",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/cash-register-g6f21396d2_1920.png",
            alignment: Alignment.topCenter,
            height: 200.0,
            ),

            SizedBox(height: 12.0,),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Principal",
                hintText: "Enter a principal e.g. 700",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )
              ),
            ),

            SizedBox(height: 12.0,),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Rate of Interest",
                  hintText: "In percentage",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )
              ),
            ),

            SizedBox(height: 12.0,),
            Row(
              children: <Widget>[
                Expanded(child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Term",
                      hintText: "Time in years",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )
                  ),
                ),),

                SizedBox(width: 12.0,),
                Expanded(child: DropdownButton<String>(
                  items: _currencies.map((String value){
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),

                  value: "Rupees",

                  onChanged: (newValueSelected) {
                            //Code to execute when dropdown button is pressed
                  },
                ),
                )
              ],
            ),

            SizedBox(height: 12.0,),
            Row(
              children: <Widget>[
                Expanded(child: RaisedButton(
                  child: Text("Calculate"),
                  onPressed: () {  },
                )),
                SizedBox(width: 12.0,),
                Expanded(child: RaisedButton(
                  child: Text("Reset"),
                  onPressed: () {  },
                ))
              ],
            ),
            SizedBox(height: 12.0,),
            Padding(padding: EdgeInsets.all(10.0),
            child: Text("All rights reserved @Praveen",
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.w600,
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
