// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Scaffold(
      //body: Center(
       // child: Image(image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
      return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/undraw_Mobile_login_re_9ntv.png",
            fit: BoxFit.cover,
            ),
           
            Text(
              "Welcome",
              style:TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
             ),
            ),
            SizedBox(
              height: 20.0,
              child: Text("Raj is here"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter username",
                  labelText: "username",
                   ),
              ),
               TextFormField(
                 obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "password",
                   ),
               ),
              SizedBox(
                height: 20.0,
            ),
            ElevatedButton(
              child: Text("Login"),
              style: TextButton.styleFrom(),
              onPressed: () {
                print("Hi Raj");
              }, 
              )
               ],
               ),
            )
          ],
          )
      );
  }
}