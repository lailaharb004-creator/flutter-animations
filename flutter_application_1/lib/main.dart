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
      home:HomePage()
    );
  }
}

////////////////////////
////two types of animations 
/// 1. -drawing-based animation
/// 2. -code-based animation 
///      -- implicit animation (simplest type)
///      -- explicit animation
//////////////////////////////////////////////////
class HomePage extends StatefulWidget{
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double width=200.0;
  Color color=Colors.red;

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Animation", style:TextStyle(color: Colors.white)),
    //     centerTitle: true,
    //     backgroundColor: Colors.deepPurple,
    //   ),
    //   body:Container(
    //     child: ListView(
    //       children: [
    //         InkWell(
    //           onTap: () {
    //             //increase the width of red container when click on it 
    //             setState(() {
    //               width=300.0;
    //             });
    //             //the width changed but there is no life no motion so instead of use container we use Animated container 
    //           },
    //           child: Center(
    //             child: Container(
    //               width:width,
    //               height: 200,
    //               color: Colors.red,
    //             )),
    //         )
    //       ],
    //     ),
    //   )
    // );
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation", style:TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body:Container(
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  width=300.0;
                  color=Colors.green;
                });
              },
              child: Center(
                child: AnimatedContainer(
                  // curve:Curves.bounceIn,
                  // curve:Curves.easeIn,
                  duration: Duration(seconds: 3),
                  width:width,
                  height: 200,
                  color: color,
                )),
            )
          ],
        ),
      )
    );
  }
}
////////////////////////////////////////////////////////////////////////////
///animation curves 
///fast --> slow 
///or the same speed 
///slow --> fast 
/////default --> linear 