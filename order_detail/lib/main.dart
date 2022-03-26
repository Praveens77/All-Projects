import 'package:flutter/material.dart';
import 'package:order_detail/colors.dart';

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
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kPrimaryColor1,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.all(1.0),
          child: Text(
            "Order Detail",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 20.0,
            ),
          ),
        ),
        elevation: 0.0, //To avoid shadow effect of app bar
        backgroundColor: kPrimaryColor1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 0.3),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child:
        Expanded(
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
                      "#5689045678",
                      style: TextStyle(
                        color: kSecColor1,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Text(
                      "Delivered",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 13.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "27 May, 2020",
                    style: TextStyle(
                      color: kSecColor3,
                      fontSize: 13.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Delivered to",
                    style: TextStyle(
                      color: kSecColor3,
                      fontSize: 13.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child:
                  Text(
                    "1633 Hampton Meadows, Lexington",
                    style: TextStyle(
                      color: kSecColor1,
                      fontSize: 13.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Payment Method",
                    style: TextStyle(
                      color: kSecColor3,
                      fontSize: 13.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Apple Pay",
                    style: TextStyle(
                      color: kSecColor1,
                      fontSize: 13.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),

                Divider(color: kSecColor3,),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Ocean Reach Oatment Stout x 2",
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
                          style: TextStyle(
                            color: kPrimaryColor1,
                            fontSize: 13.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "19.00",
                          style: TextStyle(
                            color: kSecColor1,
                            fontSize: 13.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "6 Packs",
                    style: TextStyle(
                      color: kSecColor3,
                      fontSize: 13.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Stone Peak Conditions x 1",
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
                          style: TextStyle(
                            color: kPrimaryColor1,
                            fontSize: 13.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "2.33",
                          style: TextStyle(
                            color: kSecColor1,
                            fontSize: 13.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Single",
                    style: TextStyle(
                      color: kSecColor3,
                      fontSize: 13.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Budweiser x 1",
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
                          style: TextStyle(
                            color: kPrimaryColor1,
                            fontSize: 13.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "1.73",
                          style: TextStyle(
                            color: kSecColor1,
                            fontSize: 13.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Single",
                    style: TextStyle(
                      color: kSecColor3,
                      fontSize: 13.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),

                Divider(color: kSecColor3,),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Item Total",
                      style: TextStyle(
                        color: kSecColor3,
                        fontSize: 13.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$",
                          style: TextStyle(
                            color: kPrimaryColor1,
                            fontSize: 13.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "23.06",
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
                SizedBox(height: 7.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Delivery Charges",
                      style: TextStyle(
                        color: kSecColor3,
                        fontSize: 13.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$",
                          style: TextStyle(
                            color: kPrimaryColor1,
                            fontSize: 13.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "2.00",
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
                SizedBox(height: 7.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Donate \$ 1 to Needy",
                      style: TextStyle(
                        color: kSecColor3,
                        fontSize: 13.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$",
                          style: TextStyle(
                            color: kPrimaryColor1,
                            fontSize: 13.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "1.00",
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
                SizedBox(height: 7.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Paid",
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
                          style: TextStyle(
                            color: kPrimaryColor1,
                            fontSize: 13.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "26.06",
                          style: TextStyle(
                            color: kSecColor1,
                            fontSize: 13.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),

                Divider(color: kSecColor3,),
                SizedBox(height: 10.0,),
                Expanded(
                  child: Container(
                    child: Expanded(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                            const EdgeInsets.only(left: 40.0, right: 40.0),
                            child: Container(
                              height: 55.0,
                              decoration: BoxDecoration(
                                  color: kExtColor1,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.contact_support_outlined,
                                          color: kPrimaryColor1,
                                        ),
                                        SizedBox(
                                          width: 14.0,
                                        ),
                                        Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 11.0,
                                            ),
                                            Text(
                                              "Need Support ?",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: kSecColor1,
                                                fontSize: 13.0,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              "Chat with Us",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: kSecColor3,
                                                fontSize: 12.0,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 120.0,
                                    ),
                                    Text(
                                      "Chat",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: kPrimaryColor1,
                                        fontSize: 13.0,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              child: SizedBox(
                                height: 60,
                              )),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: SizedBox(
                                width: 330.0,
                                height: 55.0,
                                child: ElevatedButton(
                                  child: Text(
                                    "Re-Order",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: kSecColor1,
                                      fontSize: 15.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                        )),
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kPrimaryColor2),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
