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

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController ctr;
  late Animation<AlignmentGeometry> alignController ;
  late Animation<double> rotateController;

  @override
  void initState() {
    ctr=AnimationController(vsync: this, duration: Duration(seconds: 1))..repeat(reverse: true);
    alignController=Tween<AlignmentGeometry>(begin: .topRight, end:.topLeft).animate(ctr);
    rotateController=Tween<double>(begin: 0.0, end :1.5).animate(ctr);
    
    super.initState();
    

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          AlignTransition(
            alignment: alignController, 
            child: RotationTransition(
              turns: rotateController,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.amber,
              ),
            )
          )
        ],
      ),
    );
  }
}
