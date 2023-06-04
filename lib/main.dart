import 'package:flutter/material.dart';
import 'package:loginpage/login_screen.dart';

void main()=>
runApp(LoginApp(
  
));

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login App",
      home: LoginScreen(),
    );
  }
}