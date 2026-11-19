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

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  BoxShape shape=.circle;
  double elevation =0;
  Color color=Colors.blueGrey;
  Color shadowColor=Colors.black;
  double padding_=20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Animation"),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          children: [
            // InkWell(
            //   onTap: () {
            //     shape=.rectangle;
            //     elevation =20;
            //     color=Colors.lightGreen;
            //     shadowColor=Colors.red;
            //     setState(() {
                  
            //     });

            //   },
            //   child: AnimatedPhysicalModel(
            //     //animateColor: //false will make the color change fast no animation ,
            //     //animateShadowColor: //false will make the color change fast no animation ,
            //     shape: shape,//shape not supported in animation so it will changed fast 
            //     elevation: elevation,
            //     color: color, 
            //     shadowColor: shadowColor,
            //     duration:Duration(seconds: 3),
            //     child: Container(
            //       alignment: .center,
            //       height: 400,
            //       child:Text("Animation")
            //     ), 
            //   ),
            // )
////////////////////////////////////////////////////////////////////////////////////////////////////////////
            InkWell(
              onTap: () {
                padding_=40;
                setState(() {
                  
                });
              },
              child: Container(
                color: Colors.amber,
                height: 200,
                child: AnimatedPadding(
                  duration: Duration(seconds: 3),
                  padding:.all(padding_),
                  child: Container(
                    color: Colors.blueGrey,
                    height: 200,
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
//Animated physical model --> implicit 
//Animated padding --> implicit 
