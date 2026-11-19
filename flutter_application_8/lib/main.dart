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
///////////////////////////////////////////////////////////////////////////////////////////////////////////
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController ctr;
  @override
  void initState() {
    
    super.initState();
    ctr=AnimationController(
    vsync: this, 
    duration: Duration(seconds: 3),
    lowerBound: 100,
    upperBound: 200
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          AnimatedBuilder(
            animation: ctr, 
            
            builder:(context, _) {
              return Container(
                color: Colors.amber,
                width:ctr.value ,
                height: ctr.value,
                child: Text("Animation",textAlign: .center,),
              );
            },
          
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: .spaceAround,
            children: [
              MaterialButton(onPressed:(){ctr.forward();;},color: Colors.red, child: Text("Forward"),),
              MaterialButton(onPressed:(){ctr.reverse();},color: Colors.red,  child: Text("Reverse"),),
              MaterialButton(onPressed:(){ctr.stop();},color: Colors.red, child: Text("Stop"),),
              MaterialButton(onPressed:(){ctr.repeat();},color: Colors.red, child: Text("Repeat"),),
              MaterialButton(onPressed:(){ctr.reset();},color: Colors.red,  child: Text("Reset"),),
            ],
          ),
        ], 
      ) ,
    );
  }
}
      