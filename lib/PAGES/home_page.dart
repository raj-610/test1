import 'package:flutter/material.dart';
import 'package:test_1/widgets/drawer.dart';

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
        drawer: MyDrawer(),
      );
  }
}