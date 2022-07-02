import 'package:flutter/material.dart';
import 'package:project1/Screens/HomeScreen.dart';
import 'package:project1/Screens/Screen0.dart';


class Screen1 extends StatelessWidget {
  String title,n;
  DateTime today=DateTime.now();
  Screen1({Key? key, required this.title,required this.n}) : super(key: key);

  void main(){
    runApp(
      MaterialApp(
        home:HomeScreen(),
        routes: {
          'S0': (context) => Screen0(),
          'S1': (context) => Screen1(title:"status",n:_name.toString())
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(
      body: Center(
        child: ListView(
            children: [
              Text(
                  "Hi $n",
                      style:TextStyle(fontSize: 30)
                  ),
              Image.asset("assets/images/index.png",height: 500,width: 500),
              const Text(
                  "You have successfully completed Hybrid mobile App Development course",
                  style:TextStyle(fontSize: 30)
              ),

              Text(
                textDirection: TextDirection.rtl,
                '$today',
                  style:TextStyle(fontSize: 20)
              ),
        ],
        )),
      ),
    );
  }
}
