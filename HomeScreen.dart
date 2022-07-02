import 'package:flutter/material.dart';
void main(){
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(
      appBar: AppBar(
        title: Text("Home Sreen"),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 450,
            height: 350,
            child: Column(
              children: [
                Image.asset('assets/images/training.jpg'),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
                  onPressed: () {
                    Navigator.pushNamed(context, 'S0');
                },
              child: const Text(
                  "Get Started",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
            ),
          ],
        ),
      ),
    ))));
  }
}