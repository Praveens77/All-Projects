import 'package:flutter/material.dart';
import 'package:manage_address/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manage Address',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kPrimaryColor1,
      appBar: AppBar(
        title: const Text('Manage Address',
          style: const TextStyle(
            fontSize: 17.0,
              fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kPrimaryColor1,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: Column(children: <Widget>[
        const Padding(
          padding: EdgeInsets.fromLTRB(5.0, 0, 20.0, 0),
        ),
        Expanded(
          child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Saved Addresses",
                              style: TextStyle(
                                color: kSecColor1,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),

                   SizedBox(height: 10.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.home_filled,
                                      color: kSecColor1,
                                    ),
                                  ],
                                ),

                                SizedBox(width: 5.0,),

                                Column(
                                  children: [
                                    Row(
                                        children: [
                                          Text(
                                            "Home",
                                            style: TextStyle(
                                              color: kSecColor2,
                                              fontFamily: 'Poppins',
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(width: 163,)
                                        ],
                                      ),
                                    Column(
                                      children: [
                                        Text(
                                          "1633 Hampton Meadows, Lexington",
                                          style: TextStyle(
                                            color: kSecColor3,
                                            fontFamily: 'Poppins',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  Icons.more_vert,
                                  color: kSecColor3,
                                ))
                          ],
                        ),
                      ],
                    ),

                     SizedBox(height: 10.0,),
                     Divider(color: kSecColor3,),
                    SizedBox(height: 10.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.business_rounded,
                                      color: kSecColor1,
                                    ),
                                  ],
                                ),

                                SizedBox(width: 5.0,),

                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Office",
                                          style: TextStyle(
                                            color: kSecColor2,
                                            fontFamily: 'Poppins',
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(width: 163,)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "558 Arbutus Drive, Santa Rosa",
                                          style: TextStyle(
                                            color: kSecColor3,
                                            fontFamily: 'Poppins',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(width: 25.0,)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  Icons.more_vert,
                                  color: kSecColor3,
                                ))
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 10.0,),
                    Divider(color: kSecColor3,),
                    SizedBox(height: 10.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: kSecColor1,
                                    ),
                                  ],
                                ),

                                SizedBox(width: 5.0,),

                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Other",
                                          style: TextStyle(
                                            color: kSecColor2,
                                            fontFamily: 'Poppins',
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(width: 163,)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "3081 Fairway Drive, Santa Rosa",
                                          style: TextStyle(
                                            color: kSecColor3,
                                            fontFamily: 'Poppins',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(width: 20.0,)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  Icons.more_vert,
                                  color: kSecColor3,
                                ))
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 10.0,),
                    Divider(color: kSecColor3,),
                    SizedBox(height: 15.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       Column(
                         children: [
                           Icon(
                             Icons.location_on_outlined,
                             color: kPrimaryColor1,
                           ),
                         ],
                       ),

                        SizedBox(width: 5.0,),

                        Column(
                          children: [
                            Text(
                              "Add New Address",
                              style: TextStyle(
                                color: kPrimaryColor1,
                                fontFamily: 'Poppins',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                  ]),
                ),
              )),
        )
      ]),
    );
  }
}