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
  Color color=Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body:Center(
        child: Column(
          children: [
            // TweenAnimationBuilder(
            //     tween: Tween(
            //       begin:100.0,
            //       end: 200.0
            //     ), 
            //     duration: Duration(seconds: 3), 
            //     builder:(context, value, child) {
            //       //value begin end 
            //       return  Container(
            //           width: value,
            //           // height: value,
            //           height: value/2,
            //           color: Colors.blueGrey,
            //       );
            //     },
            //   ),
            //////////////////////////////////////////////////////////////////////////////////////////////
            // TweenAnimationBuilder(
            //     tween: ColorTween(//Tweenn error we should use ColorTween
            //       begin:Colors.amber,
            //       end: Colors.blue
            //     ), 
            //     duration: Duration(seconds: 3),
            //     curve: Curves.bounceIn, 
            //     builder:(context, value, child) {
            //       //value begin end 
            //       return  Container(
            //           width: 200,
            //           height: 200,
            //           color: value,
            //       );
            //     },
            //   ),
              ////////////////////////////////////////////////////////////////////////////////////////////////
              InkWell(
                onTap: () {
                  setState(() {
                    color=Colors.blue;
                  });
                },
                child: TweenAnimationBuilder(
                  tween: ColorTween(//Tweenn error we should use ColorTween
                    begin:Colors.amber,
                    end: color
                  ), 
                  duration: Duration(seconds: 3),
                  // curve: Curves.bounceIn, 
                  builder:(context, value, child) {
                    return  Container(
                        width: 200,
                        height: 200,
                        color: value,
                    );
                  },
                ),
              ),
          ],//
        ),
      )
    );
  }
}
//tween animation builder -->implicit animation 
//tween is a property --> allows us to implicitly animate any property of any widget using tween class 
//Tween , ColorTween , SizeTween , BorderTween
//animatin works directly stateless widget or stateful--> if  i want it to work when i click? 