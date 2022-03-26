import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:item_detail/colors.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 12.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),

            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite_rounded,
                      color: kPrimaryColor1,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),

            Column(
              children: <Widget>[
                SizedBox(
                  height: 260,
                  child: Image.asset(
                    "assets/images/Ocean_Reach_Oatmeal_Stout__04612.webp",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Ocean Reach",
                  style: TextStyle(
                    color: kSecColor1,
                    fontSize: 22.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "\$",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: kPrimaryColor1,
                        fontSize: 22.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      "9.50",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: kSecColor1,
                        fontSize: 22.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Oatmeal Stout",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: kSecColor1,
                    fontSize: 22.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
              ],
            ),

            SizedBox(height: 5,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "375ml Can | 7.9%",
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

            SizedBox(height: 15.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Toasting notes",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: kSecColor1,
                    fontSize: 16.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            SizedBox(height: 5,),

            Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Winter needs a warm, hearty stout, which is why \nwe brewed a limited edition, 7.9% monster with \nenough oats to fill two local supermarkets. It's so \nchocolaty and silly smooth that you'll want it to \nbe winter all year long.",
                    style: TextStyle(
                      color: kSecColor3,
                      fontSize: 13.2,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Brewery Snapshot",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: kSecColor1,
                    fontSize: 16.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            SizedBox(height: 5,),

            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text(
                    "Upon returning from the UK in 2011, Simon's humble",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: kSecColor3,
                      fontSize: 13.1,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "beginnings in brewing kickstarted...",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: kSecColor3,
                        fontSize: 13.1,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Text(
                  "read more",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: kPrimaryColor1,
                    fontSize: 13.1,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20.0,
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                width: 370.0,
                height: 55.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50.0,
                          width: 110.0,

                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius:
                                BorderRadius.all(Radius.circular(8))),

                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 10.0,),
                            Column(
                              children: [
                                SizedBox(height: 15.0,),
                                Text(
                                  "6 Pack",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: kSecColor1,
                                    fontSize: 14.0,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: kSecColor1,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        )
            )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(

                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.minimize_sharp,
                                        color: kPrimaryColor1,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                ],
                              ),
                            ),
                            Container(

                              child: Text("    2    ",
                              style: TextStyle(
                                color: kSecColor1,
                                fontWeight: FontWeight.w900,
                                fontSize: 15.0,
                                fontFamily: 'Poppins'
                              ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                              child: IconButton(
                                icon: Icon(
                                  Icons.add,
                                  color: kPrimaryColor1,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],

                        )
                      ],

                    )
                  ],
                )
              ),
            ),

            SizedBox(height: 15.0,),

            Expanded(
              child: Container(
                child: Expanded(
                  child: Column(
                    children: <Widget>[
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        Container(
                          height: 55.0,
                          decoration: BoxDecoration(
                              color: kPrimaryColor2,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 9.0,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "2 ITEMS",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: kSecColor2,
                                                fontSize: 12.0,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                            SizedBox(width: 57,)
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "\$",
                                              style: TextStyle(
                                                color: kPrimaryColor1,
                                                fontSize: 13.0,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                            Text(
                                              "19.00",
                                              style: TextStyle(
                                                color: kSecColor1,
                                                fontSize: 13.0,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5.0,
                                            ),
                                            Text(
                                              "incl. taxes",
                                              style: TextStyle(
                                                color: kSecColor2,
                                                fontSize: 12.0,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Add to Cart",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: kSecColor1,
                                        fontSize: 14.0,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.arrow_right_outlined,
                                        color: kSecColor1,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
