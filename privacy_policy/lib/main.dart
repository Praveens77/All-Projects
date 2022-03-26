import 'package:flutter/material.dart';
import 'package:privacy_policy/colors.dart';

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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kPrimaryColor1,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.all(1.0),
          child: Text(
            "Privacy Policy",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
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
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 14.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Effective: As of March 1, 2020",
                      style: TextStyle(
                        color: kSecColor2,
                        fontSize: 14.5,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Review Consent Preferences",
                      style: TextStyle(
                        color: kSecColor1,
                        fontSize: 17.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "John Wiley & Sons, Inc. and its subsidiary and \naffiliate companies (collectively, ‘Wiley, ‘we; “us” or \n“our’) recognize the importance of protecting the \npersonal information collected from users in the \noperation of its services and taking reasonable",
                        style: TextStyle(
                          color: kSecColor3,
                          fontSize: 13.2,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "steps to maintain the security, integrity and privacy \nof any information in accordance with this Privacy \nPolicy. By submitting your information to Wiley you \nconsent to the practices described in this policy. If \nyou are loss than 18 years of ago, then you must",
                        style: TextStyle(
                          color: kSecColor3,
                          fontSize: 13.2,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "first sook the consont of your parent or guardian \nprior to submitting any personal information.",
                        style: TextStyle(
                          color: kSecColor3,
                          fontSize: 13.2,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    SizedBox( height: 15,),

                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "This Privacy Policy describes how Wiley collects and \nuses the personal information you provide to Wiley. \nIt also describes the choices available to you \nregarding our use of your personal information and \nhow you can access and update this information.",
                        style: TextStyle(
                          color: kSecColor3,
                          fontSize: 13.2,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15.0,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "How we collect information",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: kSecColor1,
                            fontSize: 17.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),

                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Wiley may collect personal information about you \nin the following ways:",
                        style: TextStyle(
                          color: kSecColor3,
                          fontSize: 13.2,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15.0,
                    ),

                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "(1) directly from your verbol or written input (such \nas by consenting to receiving marketing emails or \nindirectly through third parties with whom we work \nclosely (see below ‘Information We Receive From \nOther Sources’);",
                        style: TextStyle(
                          color: kSecColor3,
                          fontSize: 13.2,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    SizedBox(height: 15.0,),

                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "(2) automatically through Wiley’s website \ntechnologies including tracking online, such as by",
                        style: TextStyle(
                          color: kSecColor3,
                          fontSize: 13.2,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
