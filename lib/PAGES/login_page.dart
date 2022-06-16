import 'package:flutter/material.dart';
import 'package:test_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  // LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate) {
    setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  await Navigator.pushNamed(context, MyRoutes.homeRoute);
                  setState(() {
                    changeButton = false;
                  });
     }
  }
  
  @override
  Widget build(BuildContext context) {
  
      return Material(
        color: Colors.white,
        child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset("assets/images/undraw_Mobile_login_re_9ntv.png",
              fit: BoxFit.cover,
              // height: 200,
              ),
              
              Text(
                "Welcome $name",
                style:TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
               ),
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
                     validator: (String? value) {
                       if(value == null || value.isEmpty){
                         return "Username can't be empty";
                       }
                       return null;
                     },
                     onChanged: (value){
                       name = value;
                       setState(() {});
                     },
                ),
                 TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "password",
                     ),
                      validator: (String? value) {
                       if(value == null || value.isEmpty) {
                         return "Password can't be empty";
                       }else if(value.length < 6){
                         return "Password length should be atleast 6";
                       }
                       return null;
                     },
                 ),
                SizedBox(
                  height: 20.0,
              ),
        
              Material(
                color: Colors.deepPurple,
                borderRadius: 
                    BorderRadius.circular(changeButton? 50 : 8),
                child: InkWell(
                  onTap: () => moveToHome(context),

                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50: 150,
                    height: 50,
                    alignment: Alignment.center,
                    child:changeButton ?Icon(
                      Icons.done,
                      color: Colors.white,
                      )
                      : Text(
                      "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                      ),
                     
                      ),
                    ),
                ),
                 ],
                 ),
              )
            ],
            ),
        )
        )
      );
  }
}






// import 'package:flutter/material.dart';
// import 'package:test_1/utils/routes.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   String name = "";
//   bool changeButton = false;

//   final _formkey = GlobalKey<FormState>();

//   moveToHome(BuildContext context) async {
//     if (_formkey.currentState!.validate) {
//       setState(() {
//         changeButton = true;
//       });
//     }
//     await Future.delayed(Duration(seconds: 1));
//     await Navigator.pushNamed(context, MyRoutes.homeRoute);
//     setState(() {
//       changeButton = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//         color: Colors.white,
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formkey,
//             child: Column(
//               children: [
//                 Image.asset(
//                   "assets/images/undraw_Mobile_login_re_9ntv.png",
//                   fit: BoxFit.cover,
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Text(
//                   "Welcome $name",
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                       vertical: 16.0, horizontal: 32.0),
//                   child: Column(
//                     children: [
//                       TextFormField(
//                         decoration: InputDecoration(
//                           hintText: "Enter username",
//                           labelText: "Username",
//                         ),
//                         validator: (String? value) {
//                           if (value == null || value.isEmpty) {
//                             return "Username can't be empty";
//                           }
//                           return null;
//                         },
//                         onChanged: (value) {
//                           name = value;
//                           setState(() {});
//                         },
//                       ),
//                       TextFormField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           hintText: "Enter password",
//                           labelText: "Password",
//                         ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return "Password can't be empty";
//                           } else if (value.length < 6) {
//                             return "Password length should be atleast 6";
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(
//                         height: 40.0,
//                       ),
//                       InkWell(
//                         onTap: () => moveToHome(context),
//                         child: AnimatedContainer(
//                           duration: Duration(seconds: 1),
//                           width: changeButton ? 50 : 150,
//                           height: 50,
//                           alignment: Alignment.center,
//                           child: changeButton
//                               ? Icon(
//                                   Icons.done,
//                                   color: Colors.white,
//                                 )
//                               : Text(
//                                   "Login",
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 18),
//                                 ),
//                           decoration: BoxDecoration(
//                             color: Colors.deepPurple,
//                             borderRadius:
//                                 BorderRadius.circular(changeButton ? 50 : 8),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }