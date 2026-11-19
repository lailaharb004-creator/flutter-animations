import 'dart:math';

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

/////////////////////////////////////////////////////////////////////////////////////////////
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  late AnimationController ctr;
  late Animation<double> rotateAnimation;


  @override
  void initState() {
    super.initState();
    ctr=AnimationController(vsync: this, duration: Duration(seconds: 3));
    

    rotateAnimation=Tween<double>(begin: 0, end:pi).animate(ctr);
    ctr.repeat(reverse: true);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          Center(
            child: RotationTransition(
              turns:rotateAnimation,
              child: Image.asset("assets/images/hypno.png", width: 80,height: 80,),
            ),
          ),
          
        ],
      ),
    );
  }
}