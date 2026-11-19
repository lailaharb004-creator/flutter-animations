import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}




class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TweenAnimationBuilder(
              tween:Tween(begin: 100.0, end: 200.0), 
              duration: Duration(seconds: 3),
              builder:(context, value, child) {
                return Container(
                  width: value,
                  height: value,
                  color: Colors.amber,
                );
              },
              )
            
          ],
        ),
      ),
    );
  }

}



//tween animation builder 
      