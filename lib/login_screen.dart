import 'package:flutter/material.dart';
 TextStyle myStyle = TextStyle(fontSize: 25);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  
  

  @override
  Widget build(BuildContext context) {
    
    final usernameField = TextField(
    style: myStyle,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(10),
      hintText: "username",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0),
      )
    ),
  );

   final passwordField = TextField(
    style: myStyle,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(10),
      hintText: "password",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0),
      )
    ),
  );

    final myLoginButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.blue,
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
      onPressed: (){
        print("login Button is pressed");
      },

      child: Text('login',style: TextStyle(color: Colors.white,fontSize: 25),),
    )

  );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Icon(Icons.supervised_user_circle_rounded, size:100),
              usernameField,
              SizedBox(height: 20),
              passwordField,
              SizedBox(height: 20),
              myLoginButton,
              SizedBox(height: 50),

            ],),
          ),
        ),
      ),
    );
  }
}