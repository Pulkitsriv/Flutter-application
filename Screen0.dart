import 'package:flutter/material.dart';
import 'package:project1/Screens/Screen1.dart';

class Screen0 extends StatefulWidget {
  Screen0({Key? key}) : super(key: key);

  @override
  State<Screen0> createState() => _ScreenState();
}

class _ScreenState extends State<Screen0>{
  TextEditingController _name=TextEditingController();
  TextEditingController email=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
          TextField(
            keyboardType: TextInputType.name,
              controller:_name,
            decoration: InputDecoration(
              labelText: "Name",
              hintText: "Enter your name",
              icon: Icon(Icons.account_circle),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              )
            )
          ),
           TextField(
               keyboardType: TextInputType.emailAddress,
               controller: email,
               decoration: InputDecoration(
                   labelText: "Email",
                   hintText: "Enter your email",
                   icon: Icon(Icons.email),
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20)
                   )
               )
           ),
          ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Screen1(title: "status",n:_name.toString());
              }));
            },
          ),
        ]),
      ),
    ));
  }
}