import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';
import 'package:ocr_scanner/colors.dart';

void main() {
  runApp(MaterialApp(
    title: "OCR Scanner",
    debugShowCheckedModeBanner: false,
    home: Scanner(),
  ));
}

class Scanner extends StatefulWidget {
  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  bool initialized = false;

  @override
  void initState() {
    FlutterMobileVision.start().then((value) {
      initialized = true;
    });
    // TODO: implement initState
    super.initState();
  }

  _startScan() async {
    List<OcrText> list = List(); //disable null safety to use List()

    try {
      list = await FlutterMobileVision.read(
        waitTap: true,
        fps: 5,
        multiple: true,
      );
      for (OcrText text in list) {
        print('values ${text.value}');
      }
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
        child: Container(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Scan your Card",
                    style: TextStyle(
                      color: kSecColor1,
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hang in there while we detect your card",
                    style: TextStyle(
                      color: kSecColor3,
                      fontFamily: "Poppins",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: SizedBox(
                    height: 400.0,
                    width: 400.0,
                    child: Image.asset(
                      "assets/images/scanner_img.jpeg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 80.0, right: 80.0),
                  child: SizedBox(
                    height: 30.0,
                    width: 30.0,
                    child: ElevatedButton(
                      child: Text(
                        "Open Scanner",
                        style: TextStyle(
                          color: kSecColor2,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(kPrimaryColor2),
                      ),
                      onPressed: () => _startScan(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Enter card manually",
                    style: TextStyle(
                      color: kPrimaryColor1,
                      fontFamily: "Poppins",
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
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
