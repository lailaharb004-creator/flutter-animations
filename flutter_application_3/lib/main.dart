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
  HomePage({super.key});
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double toLeft=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Animation"),
      ),
      body:InkWell(
        onTap: () {
          setState(() {
            toLeft=200;
            
          });
        },
        child: Stack(
          children: [
            Container(
              color:Colors.amber,
              height: 600,
            ),
            ///to make it life we use AnimatedPositioned
            // AnimatedPositioned(
            //   duration: Duration(seconds: 3),
            //   left:toLeft , 
            //   top:toLeft ,
            //   // right: ,
            //   // bottom: ,
            //   child:Container(
            //     color:Colors.brown,
            //     height: 200,
            //     width: 200,
            //     )
            //   )
            /////////////////////////////////////////////////////////////////////////////////
            AnimatedPositionedDirectional(
              duration: Duration(seconds: 3),
              start:toLeft , 
              top:toLeft ,
              // right: ,
              // bottom: ,
              child:Container(
                color:Colors.brown,
                height: 200,
                width: 200,
                )
              )
          ],
        ),
      )
    );
  }
}
///with stack 
///Animated Positioned 
///Animated Positioned Directional 
///implicit Animation 
///left to right or right to left اتجاه الصفحة 
///in arabic - > start is right 
///in english -> start is left 
///in arabic  -> end is left 
///in arabic ->end is right 