import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage()
    );
  }
}

class HomePage extends StatefulWidget{
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double opacity=1.0;
  double fontSize=15;
  Color color=Colors.black;

  @override
  Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: Text("Animation"),
  //         centerTitle: true,
  //         backgroundColor: Colors.deepPurple,
  //       ),
  //       body:Column(
  //         children: [
  //           Center(
  //             child:InkWell(
  //               onTap: () {
  //                 setState(() {
  //                   // opacity=0.0;
  //                   opacity=0.6;
  //                 });
  //               },
  //               child: AnimatedOpacity(
  //                 curve:Curves.ease ,
  //                 opacity:opacity, 
  //                 duration: Duration(seconds: 3),
  //                 child: Container(
  //                   width: 200,
  //                   height: 200,
  //                   color: Colors.red,
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       )
  // );
//////////////////////////////////////////////////////////////////////////////////////////////////
  return Scaffold(
        appBar: AppBar(
          title: Text("Animation"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body:Column(
          children: [
            Center(
              child:InkWell(
                onTap: () {
                  setState(() {
                    fontSize=25;
                    color=Colors.deepOrangeAccent;
                  });
                },
                child: AnimatedDefaultTextStyle(
                  style:TextStyle(fontSize: fontSize ,color: color), 
                  duration: Duration(seconds: 3),
                  child: Text("Animated Default TextStyle"), 
                )
              ),
            ),
          ],
        )
      );
  }
}


//////////////////////////////////////////////////////////////////////
///Animated opacity & Animated default textstyle 
///implicit animation 
///0 < opacity < 1  