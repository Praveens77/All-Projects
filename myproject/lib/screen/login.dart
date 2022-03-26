import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myproject/screen/home.dart';
import 'package:myproject/screen/register.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  // form key
  final _formkey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  //Firebase
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    //email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,

      validator: (value) {
        if(value!.isEmpty){
          return ("Please enter your email");
        }
        //reg expression for email validation
        if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9,-]+.[a-z]").hasMatch(value))
          {
            return("Please enter a valid email");
          }
        return null;
      },
      onSaved: (value)
        {
          emailController.text = value!;

        },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,

      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty)
          {
            return ("Password is reuired for login");
          }
        if(!regex.hasMatch(value))
          {
            return ("Please enter a valid password(Min. 6 character)");
          }
      },
      onSaved: (value)
      {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //Login button
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
         signIn(emailController.text, passwordController.text);
        },
        child: Text("Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    //Screen designing
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 200,
                    child: Image.asset(
                        "assets/images/transprent-png.png",
                        fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 35,),

                  emailField,
                  SizedBox(height: 25,),

                  passwordField,
                  SizedBox(height: 35,),

                  loginButton,
                  SizedBox(height: 15,),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account ?",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Register()));

                        },
                      child: Text(" Sign Up",
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      )  ,
                      ),

                    ],
                  )
                ],
              ),
             ),
            ),
          ),
        ),
      ),
    );
  }

  //login function
void signIn(String email, String password) async
{
  if(_formkey.currentState!.validate()) {
    await _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((uid) => {
          Fluttertoast.showToast(msg: "Login Successful"),
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()))
    })
        .catchError((e) {
      Fluttertoast.showToast(msg: e!.message);
    });
  }
}

}
