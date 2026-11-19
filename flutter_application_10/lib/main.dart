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
class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            TweenAnimationBuilder(
              duration: Duration(seconds: 3),
              tween:Tween(begin:0 , end:3.14) ,
              builder: (context, value, _) {
                return Transform.rotate(
                angle: value.toDouble() ,// 90
                child: Container(
                  color:Colors.blueGrey,
                  width: 200,
                  height: 200,
                  child: Align(alignment: .center,child: Text("Transform rotate",)),
                ),
              );
              },
              
            ),
            ///////////////////////////////////////////////////////////////////////////////////
            TweenAnimationBuilder(
              duration: Duration(seconds: 1),
              tween:Tween(begin:0.0 , end:50.0) ,
              builder: (context, value, _) {
                return Transform.translate(
                //moving of the element on the x axis or y axis  + or -
                offset:Offset(value, value),
                child: Container(
                  color:Colors.blueGrey,
                  width: 200,
                  height: 200,
                  child: Align(alignment: .center,child: Text("Transform translate",)),
                ),
              );
              },
              
            ),
            ///////////////////////////////////////////////////////////////////////////////////
            TweenAnimationBuilder(
              duration: Duration(seconds: 1),
              tween:Tween(begin:0.0 , end:1.5) ,
              builder: (context, value, _) {
                return Transform.scale(
                //changing the size of the element default 1 
                scale: value,
                // origin: Offset(dx, dy),// the start of changing 
                child: Container(
                  color:Colors.blueGrey,
                  width: 200,
                  height: 200,
                  child: Align(alignment: .center,child: Text("Transform translate",)),
                ),
              );
              },
              
            ),
          ],
        ),
      ),
    );
  }

}

//rotate 
