import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   var days = 30;
  var name = "Codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
        body: Center(
          child: Container(
            child:Text("Welcome to $days days of flutter by $name") 
          ),
        ),
        drawer: Drawer(),
      );
  }
}