import 'package:flutter/material.dart';

import 'colors.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "UI Design",
    home: Orders(),
  ));
}

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kPrimaryColor1,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.all(1.0),
          child: Text(
            "Orders",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 20.0,
            ),
          ),
        ),
        elevation: 0.0, //To avoid shadow effect of app bar
        backgroundColor: kPrimaryColor1,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.5, 20.0, 15.0),
            child: TextField(
              style: TextStyle(color: kSecColor1),
              onChanged: (value) {},
              controller: editingController,
              decoration: InputDecoration(
                  fillColor: Colors.white, filled: true,
                  prefixIconColor: Colors.white,
                  hintText: "Search By Item",
                  prefixIcon: Icon(Icons.search_outlined),
                  border: OutlineInputBorder(

                      borderSide: BorderSide( color: Colors.white, width: 0.0),
                      borderRadius: BorderRadius.all(Radius.circular(13.0))
                  )
              ),
            ),
          ),
          Expanded(
              child:
              Container(
                margin: EdgeInsets.only(top: 0.3),
                decoration: BoxDecoration(
                    color: Colors.white,
                   ),
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "#5689055678",
                                style: TextStyle(
                                  color: kSecColor1,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              SizedBox(
                                width: 175.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Today at 6:00 PM',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: kSecColor2,
                                  fontSize: 13.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "4 Items",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: kSecColor1,
                                  fontSize: 13.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: kPrimaryColor1,
                                      fontSize: 13.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "26.06",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: kSecColor2,
                                      fontSize: 13.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Ocean Reach Oatmeal Stout x2",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: kSecColor3,
                                  fontSize: 13.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Stone Peak Conditions x 1, Budweiser x1",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: kSecColor3,
                                  fontSize: 14.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 30.0,
                              ),
                            ],
                          ),
                          Divider(
                            color: kSecColor3,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                TextButton(
                                    child: Row(
                                      children: [

                                        Text(
                                            "Track Order",
                                            style: TextStyle(fontSize: 14)
                                        ),
                                        Icon(Icons.arrow_right,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                                        foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5.0),
                                                side: BorderSide(color: Colors.red)
                                            )
                                        )
                                    ),
                                    onPressed: () => null
                                ),

                                Row(
                                  children: [
                                    Icon(Icons.live_help_outlined,
                                      color: Colors.red,
                                      size: 20.0,
                                    ),
                                    SizedBox(width: 0,),
                                    ElevatedButton(
                                        child: Text(
                                            "Support",
                                            style: TextStyle(fontSize: 14)
                                        ),
                                        style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0.0),
                                            foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.zero,
                                                    side: BorderSide(color: Colors.white)
                                                )
                                            )
                                        ),
                                        onPressed: () => null
                                    ),
                                  ],
                                )
                              ]
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "#5689049078",
                                style: TextStyle(
                                  color: kSecColor1,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              SizedBox(
                                width: 175.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'May 25,2020 at 5:00 PM',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: kSecColor2,
                                  fontSize: 13.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "7 Items",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: kSecColor1,
                                  fontSize: 13.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: kPrimaryColor1,
                                      fontSize: 13.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "82.53",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: kSecColor2,
                                      fontSize: 13.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Josh Cellars Cabernet Sauvignon x 3",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: kSecColor3,
                                  fontSize: 13.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Bogle Meriot x 3. Original Spiced Rum x 1",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: kSecColor3,
                                  fontSize: 14.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 30.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Divider(
                            color: kSecColor3,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Delivered",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 13.0,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.refresh,
                                      color: Colors.red,
                                      size: 20.0,
                                    ),
                                    SizedBox(width: 5,),
                                    Text(
                                      "Re-order",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: kPrimaryColor1,
                                        fontSize: 13.0,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ]
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "#5689028900",
                                style: TextStyle(
                                  color: kSecColor1,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              SizedBox(
                                width: 175.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'May 20, 2020 at 9:00 PM',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: kSecColor2,
                                  fontSize: 13.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "3 Items",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: kSecColor1,
                                  fontSize: 13.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: kPrimaryColor1,
                                      fontSize: 13.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "29.46",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: kSecColor2,
                                      fontSize: 13.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Sailor Jerry Spiced Rum x 2",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: kSecColor3,
                                  fontSize: 13.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Bud Light Seltzer 12 pack x 1",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: kSecColor3,
                                  fontSize: 14.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Divider(
                            color: kSecColor3,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Delivered",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 13.0,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.refresh,
                                      color: Colors.red,
                                      size: 20.0,
                                    ),
                                    SizedBox(width: 5,),
                                    Text(
                                      "Re-order",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: kPrimaryColor1,
                                        fontSize: 13.0,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ]
                          ),
                        ]
                    ),
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}