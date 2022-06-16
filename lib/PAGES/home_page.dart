import 'package:flutter/material.dart';
import 'package:test_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
        body: Center(
          child: //Column(
           // children: [
            //  Image(image: AssetImage('assets/images/test.png')),
              Container(
                child: Text("Welcome to $days days of flutter by $name"), 
              ),
               
            //],
          ),
          drawer: MyDrawer(),
       // ),
       
      );
  }
}
