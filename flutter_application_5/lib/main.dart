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
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double width=200;
  double height=200;
  AlignmentGeometry alignment=.topLeft;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Animation"),
        centerTitle: true,
      ),
      // body:InkWell(
      //   onTap: () {
      //     setState(() {
      //       width=300;
      //       height=600;
      //     });
      //   },
      //   child: AnimatedSize(
      //     duration: Duration(seconds: 3),
      //     child: Container(
      //       color: Colors.orange,
      //       width: width,
      //       height: height,
      //     ),
      //   ),
      // )
      ////////////////////////////////////////////////////////////////////////////////
      body:InkWell(
        onTap: () {
          setState(() {
            alignment=.center;
          });
        },
        child: AnimatedAlign(
          alignment: alignment,
          duration: Duration(seconds: 3),
          child: Container(
            color: Colors.orange,
            width: width,
            height: height,
          ),
        ),
      )
    );
  }
}
//Animated size 
//Animated Align 