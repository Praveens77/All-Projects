import 'package:flutter/material.dart';
import 'package:pop_up/colors.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Pop Up',
    home: PopUp(),
  ));
}

class PopUp extends StatefulWidget {
  const PopUp({Key? key}) : super(key: key);

  @override
  State<PopUp> createState() => _PopUpState();
}
bool _value = false;
class _PopUpState extends State<PopUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                    )
                ),
              backgroundColor: MaterialStateProperty.all(kPrimaryColor2),
            ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  elevation: 16,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0)
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        _buildRow(_value,'Popularity'),
                        _buildRow(_value,'Newness'),
                        _buildRow(_value,'Name: A-Z'),
                        _buildRow(_value,'Name: Z-A'),
                        _buildRow(_value,'Price: Low-High'),
                        _buildRow(_value,'Price: High-Low'),
                        SizedBox(height: 20.0,)
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Text('Sort By',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: kSecColor2,
              fontWeight: FontWeight.bold,
            ),),
        ),
      ),
    );
  }

  Widget _buildRow(bool _value, String name) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 12),

          SizedBox(height: 12),
          Row(
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    _value = !_value;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: _value
                        ? Icon(
                      Icons.radio_button_checked,
                      size: 30.0,
                      color: kSecColor1,
                    )
                        : Icon(
                      Icons.radio_button_off_outlined,
                      size: 30.0,
                      color: kPrimaryColor2,
                    ),
                  ),
                ),
              ),

              SizedBox(width: 12),

              Text(name,
              style: TextStyle(
                color: kSecColor1,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 18.0
              ),),
            ],
          ),
        ],
      ),
    );
  }
  }
